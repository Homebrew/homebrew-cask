cask 'sogouinput' do
  version '3.6.0.1229'
  sha256 '31ec5b4f7c878ad7d05e5b8c8d5b6ea03374b7bea419d9faba997b28b6c31f50'

  url 'http://pinyin.sogou.com/mac/softdown.php'
  name 'Sogou Input Method'
  name '搜狗输入法'
  homepage 'http://pinyin.sogou.com/mac/'
  license :gratis

  installer manual: '安装搜狗输入法.app'

  uninstall delete: '/Library/Input Methods/SogouInput.app'
end
