cask 'sogouinput' do
  version '3.6.0.1303'
  sha256 'f2eb401f37fd964688a9c605895841c33c68fb7a2aea044855f6d78434743c69'

  url 'http://cdn1.ime.sogou.com/SogouInput_V3.6.0.1303.dmg'
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer manual: '安装搜狗输入法.app'

  uninstall delete: '/Library/Input Methods/SogouInput.app'
end
