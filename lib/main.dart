import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '현재 위치 미세먼지',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('얼굴사진'),
                          Text('80', style: TextStyle(fontSize: 40)),
                          Text('보통', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      color: Colors.yellow,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text('이미지'),
                            SizedBox(width: 16),
                            Text(
                              '11°',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Text(
                          '습도 100%',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text('풍속 5.7m/s'),
                      ],
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.refresh),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
