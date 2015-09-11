cask :v1 => 'sogouinput' do
  version '3.3.0.73565'
  sha256 '70c691820b16a1b107341188ea92fa6bb2dabff6f389578da33664e6f3350899'

  url 'http://download.ime.sogou.com/1441013009/sogou_mac_33a.dmg'
  name '搜狗输入法'
  name 'Sogou Input Method'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer :manual => '安装搜狗输入法.app'

  uninstall :delete => '/Library/Input Methods/SogouInput.app'
end
