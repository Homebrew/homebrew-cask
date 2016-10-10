cask 'sogouinput' do
  version '3.7.0.1459'
  sha256 '1f738c14235fa5bfd079788c23d07b4827f4091c4ab2ba6017d387535ee563aa'

  url "http://cdn1.ime.sogou.com/SogouInput_V#{version}.dmg"
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'http://pinyin.sogou.com/mac/'

  installer manual: '安装搜狗输入法.app'

  uninstall delete: '/Library/Input Methods/SogouInput.app'
end
