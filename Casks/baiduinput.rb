# encoding: UTF-8
class Baiduinput < Cask
  version '3.2_1000e'
  sha256 'a8599116bb9248a06b7a26f7be73061cb00263263fe685cb0b7c6c99fce6cf56'

  url 'http://wuxian.baidu.com/download/1000e/baiduinput_mac_v3.2_1000e.dmg'
  homepage 'http://wuxian.baidu.com/input/mac.html'

  install '安装百度输入法.pkg'
  uninstall :pkgutil  => 'com.baidu.inputmethod.*',
            :files    => [
                          '/Library/Input Methods/BaiduIM.app'
                         ]
end
