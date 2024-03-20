import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _customIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
          title: Text("This is an ExpansionTile"),
          subtitle: Text("ExpansionTile subtitle"),
          trailing:Icon(_customIcon? Icons.arrow_drop_down_circle_outlined : Icons.arrow_drop_down),
          children: [
            ListTile(
              title: Text('This is tile Number 2 '),
            ),
          ],
          onExpansionChanged: (bool expanded){
            setState(() {
              _customIcon =! _customIcon;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
