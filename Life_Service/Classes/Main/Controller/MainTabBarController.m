//
//  MainTabBarController.m
//  Life_Service
//
//  Created by tarena on 16/6/29.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "MainTabBarController.h"
#import "WeatherViewController.h"
#import "ComicBookViewController.h"
#import "StockViewController.h"
#import "BusRouteViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    WeatherViewController *weatherVC = [[WeatherViewController alloc] init];
    ComicBookViewController *bookVC = [[ComicBookViewController alloc] init];
    StockViewController *stockVC = [[StockViewController alloc] init];
    BusRouteViewController *busVC = [[BusRouteViewController alloc] init];
    
    weatherVC.title = @"天气预报";
    bookVC.title = @"漫画书";
    stockVC.title = @"股票";
    busVC.title = @"公交线路";
    
    [self addChildViewController:weatherVC];
    [self addChildViewController:stockVC];
    [self addChildViewController:busVC];
    [self addChildViewController:[[UINavigationController alloc] initWithRootViewController:bookVC]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
