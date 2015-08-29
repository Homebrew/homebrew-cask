cask :v1 => 'sogouinput' do
  version '3.3.0.73352'
  sha256 'b783fd9706e250a93d5ed502196b5218b7875319b453c7830f3276fe15f037f2'

  url 'http://download.ime.sogou.com/1440647916/sogou_mac_33.dmg'
  name '搜狗输入法'
  name 'Sogou Input Method'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
