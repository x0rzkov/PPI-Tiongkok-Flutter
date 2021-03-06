import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Scaffold(
        //App Bar
        appBar: new AppBar(
          title: new Text(
            'Tentang',
            style: new TextStyle(
              fontSize: Theme.of(context).platform == TargetPlatform.iOS
                  ? 17.0
                  : 20.0,
            ),
          ),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),

        //Content of tabs
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Struktur Kepengurusan', style: TextStyle(color: Colors.red)),
                          Padding(padding: EdgeInsets.only(bottom: 3.0)),
                          Text('2018 - 2020', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 32.0))
                        ],
                      ),
                      Material
                        (
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center
                            (
                              child: Padding
                                (
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.people, color: Colors.white, size: 30.0),
                              )
                          )
                      )
                    ]
                ),
              ),
            ),
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Sejarah', style: TextStyle(color: Colors.red)),
                          Padding(padding: EdgeInsets.only(bottom: 3.0)),
                          Text('PPIT', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 32.0))
                        ],
                      ),
                      Material
                        (
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center
                            (
                              child: Padding
                                (
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.history, color: Colors.white, size: 30.0),
                              )
                          )
                      )
                    ]
                ),
              ),
            )
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(2, 110.0),
          ],
        )
  );


  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell
          (
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
            child: child
        )
    );
  }
}
