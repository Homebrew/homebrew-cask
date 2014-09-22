class Doubletwist < Cask
  version '3.1.2'
  sha256 '47975cc7517a6cf8c90362536a7feb53f0ff8af7d45866481d37cad2fcae4dac'

  url 'http://download.doubletwist.com/releases/mac/dT-3.1.2-kronos-patch1-r11040/doubleTwist.dmg'
  appcast 'http://download.doubletwist.com/mac/appcast.xml'
  homepage 'http://www.doubletwist.com/'

  app 'doubleTwist.app'
end
