cask 'sogouinput' do
  version '3.3.0.76660'
  sha256 'ec3a007301d9c948b5e9463846b74cbcb034a518b37ee010b004aeb243aaa808'

  url 'http://download.ime.sogou.com/1449122235/sogou_mac_33e.dmg'
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
