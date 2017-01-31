cask 'baiduinput' do
  version :latest
  sha256 :no_check

  url 'https://srf.baidu.com/?c=j&e=d&platform=mac'
  name 'Baidu Input'
  name '安装百度输入法'
  homepage 'https://srf.baidu.com/input/mac.html'

  installer manual: '安装百度输入法.app'

  uninstall pkgutil: 'com.baidu.inputmethod.*',
            delete:  '/Library/Input Methods/BaiduIM.app'
end
