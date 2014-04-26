# encoding: UTF-8
class Baiduinput < Cask
  url 'http://shouji.baidu.com/download/1000e/baiduinput_mac_v3.2_1000e.dmg'
  homepage 'http://wuxian.baidu.com/input/mac.html'
  version '3.2'
  sha256 'a74ef75bee54e6d563f795a943d9328c3229205b273be38c6df144f49c9d67d5'
  install '安装百度输入法.pkg'
  uninstall :pkgutil  => 'com.baidu.inputmethod.*',
            :files    => [
                          '/Library/Input Methods/BaiduIM.app'
                         ]
end
