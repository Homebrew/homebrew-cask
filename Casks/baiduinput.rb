cask 'baiduinput' do
  version '3.4.1.5_1000e,5r1ZsjOhKgQFm2e88IuM_a'
  sha256 '0d6b13ac06bfdca2cf3f1d6c84d09904da6baf8fdb9730feaa077b2a64eac69b'

  url "https://gss0.baidu.com/#{version.after_comma}/srf/mac/baiduinput_mac_v#{version.before_comma}.dmg"
  name 'Baidu Input'
  name '安装百度输入法'
  homepage 'https://srf.baidu.com/input/mac.html'

  installer manual: '安装百度输入法.app'

  uninstall pkgutil: 'com.baidu.inputmethod.*',
            delete:  '/Library/Input Methods/BaiduIM.app'
end
