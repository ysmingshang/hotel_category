//
//  CTMediator.m
//  hotel_category
//
//  Created by Mikey on 2018/1/10.
//

#import "CTMediator.h"

@implementation CTMediator (Hotel)

- (UIViewController *)hotelViewControllerWithCallback:(void(^)(NSString *result))callback
{
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"callback"] = callback;
    
    return [self performTarget:@"Hotel" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
