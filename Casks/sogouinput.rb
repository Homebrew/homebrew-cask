cask :v1 => 'sogouinput' do
  version '3.2.0.68659'
  sha256 '45abc1adef879c3b4c090b5d2bac9c7b89adcda88dde6b030305c52c5b2734f3'

  url 'http://download.ime.sogou.com/1429884508/sogou_mac_32a.dmg'
  name '搜狗输入法'
  name 'Sogou Input Method'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
