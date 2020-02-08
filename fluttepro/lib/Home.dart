import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
            leading: Icon(Icons.assignment_turned_in),
              title: Text('Primeira Hab'),
            ),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text('Segunda Via'),
            ),
            ListTile(
              leading: Icon(Icons.videogame_asset),
              title: Text('CNH Definitiva'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search, size: 30),
          Icon(Icons.mic, size: 30),
          Icon(Icons.chat, size: 30)
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                GFAvatar(
                    backgroundImage:NetworkImage('https://scontent-gru2-2.xx.fbcdn.net/v/t1.0-9/p960x960/67646397_2274978392614711_1697769747128516608_o.jpg?_nc_cat=105&_nc_ohc=jmL2jIc0hTQAX_0pygi&_nc_ht=scontent-gru2-2.xx&_nc_tp=6&oh=75809681317c411427f138f0578ed1f7&oe=5ED1F9A2'),
                    size: 110
                ),],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://wallpapercave.com/wp/XHHWWGh.jpg'),fit: BoxFit.fill
              ),
            ),
          ),
          Container(
            height: 80,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
              topLeft:  const  Radius.circular(40.0),
              topRight: const  Radius.circular(40.0))
            ),
            margin: EdgeInsets.only(top: 220),
          ),
          Container(
            height: 140,
            decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(40.0),
                    topRight: const  Radius.circular(40.0)),
            ),
            margin: EdgeInsets.only(top: 260),
          ),
          Container(
            height: 150,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                  topLeft:  const  Radius.circular(40.0),
                  topRight: const  Radius.circular(40.0)),
            ),
            margin: EdgeInsets.only(top: 370),
          ),
        ],
      )
     );
  }
}
