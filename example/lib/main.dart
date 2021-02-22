import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter/material.dart' as material;

import 'screens/buttons.dart';

// final appKey = GlobalKey<_MyAppState>();
final homeKey = GlobalKey();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Fluent ui app showcase',
      themeMode: ThemeMode.light,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => MyHomePage(key: homeKey),
      },
      style: Style(
        accentColor: Colors.green,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PivotView(
        currentIndex: index,
        pages: <Widget>[
          InputsPage(),
          Column(
            children: [
              Tooltip(
                message: Text('my message'),
                child: Card(
                  child: Text('hahaha'),
                ),
              ),
            ],
          ),
        ],
      ),
      // left: NavigationPanel(
      //   currentIndex: index,
      //   onChanged: (i) => setState(() => index = i),
      //   items: [
      //     NavigationPanelItem(
      //       icon: Icon(FluentIcons.radio_button_24_filled),
      //       label: Text('Inputs'),
      //     ),
      //     NavigationPanelItem(
      //       icon: Icon(FluentIcons.radio_button_24_filled),
      //       label: Text('Surface'),
      //     ),
      //   ],
      // ),
    );
  }
}