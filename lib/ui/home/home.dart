import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/constants/dimens.dart';
import 'package:boilerplate/utils/routes/routes.dart';
import 'package:boilerplate/widgets/core/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/widgets/common/tutor_item_widget.dart';
import 'package:boilerplate/widgets/core/textfield_widget.dart';
import 'package:boilerplate/widgets/common/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 80),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: AppColors.colors['systemColor'],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to Lettutor',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Dimens.md_padding),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recommended Tutors'),
                          Text(
                            'See all >',
                            style: TextStyle(
                                color: AppColors.colors['systemColor'],
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimens.md_padding,
                      ),
                      TutorItemWidget(
                          description:
                              'Tin tức cặp sao đang tìm hiểu nhau rộ lên từ cuối tháng 9. Tài tử Đài Loan thoải mái bày tỏ tình cảm với Hứa Vỹ Ninh, trong khi sao nữ kín tiếng.',
                          name: 'Khưu Trạch',
                          urlImage: 'assets/images/avatars/img_avatar1.jpg'),
                      SizedBox(
                        height: Dimens.md_padding,
                      ),
                      TutorItemWidget(
                          description:
                              'Tin tức cặp sao đang tìm hiểu nhau rộ lên từ cuối tháng 9. Tài tử Đài Loan thoải mái bày tỏ tình cảm với Hứa Vỹ Ninh, trong khi sao nữ kín tiếng.',
                          name: 'Khưu Trạch',
                          urlImage: 'assets/images/avatars/img_avatar1.jpg'),
                      SizedBox(
                        height: Dimens.md_padding,
                      ),
                      TutorItemWidget(
                          description:
                              'Tin tức cặp sao đang tìm hiểu nhau rộ lên từ cuối tháng 9. Tài tử Đài Loan thoải mái bày tỏ tình cảm với Hứa Vỹ Ninh, trong khi sao nữ kín tiếng.',
                          name: 'Khưu Trạch',
                          urlImage: 'assets/images/avatars/img_avatar1.jpg'),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
