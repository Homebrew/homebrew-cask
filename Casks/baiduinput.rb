cask 'baiduinput' do
  version '3.4_1000e'
  sha256 'dd7a65c1eb2c1f300c96bea2bac63bbdb4a23d31a78ddbdb4f4cd5d14eba08e3'

  url "http://shouji.baidu.com/download/baiduinput_mac_v#{version}.dmg"
  name 'Baidu Input'
  name 'BaiduIM'
  name '安装百度输入法'
  homepage 'http://wuxian.baidu.com/input/mac.html'
  license :gratis

  installer manual: '安装百度输入法.app'

  uninstall pkgutil: 'com.baidu.inputmethod.*',
            delete:  '/Library/Input Methods/BaiduIM.app'
end
