//
//  PangramTests.m
//  PangramTests
//
//  Created by Rokita, Kyle on 11/29/16.
//  Copyright © 2016 Rokita, Kyle. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface PangramTests : XCTestCase

@end

static NSString *const alphabet = @"abcdefghijklmnopqrstuvwxyz";

@implementation PangramTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testValidPangram {
    NSString *input = @"A quick brown fox jumps over the Lazy Dog";
    NSString *output = [ViewController pangramChecker:input];
    XCTAssertNil(output);
}

- (void)testEmptyString {
    NSString *input = @"";
    NSString *output = [ViewController pangramChecker:input];
    XCTAssert([output isEqualToString:alphabet]);
}

- (void)testSingleA {
    NSString *input = @"a";
    NSString *output = [ViewController pangramChecker:input];
    XCTAssert([output isEqualToString:@"bcdefghijklmnopqrstuvwxyz"]);
}

- (void)testInvalidPangram {
    NSString *input = @"A quick brown ox jump over the lazy dog"; // removed 'f', 's'
    NSString *output = [ViewController pangramChecker:input];
    XCTAssert([output isEqualToString:@"fs"]);
}


@end
