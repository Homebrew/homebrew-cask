cask 'qqinput' do
  version '2.8.86.400'
  sha256 '5b90cf604230013d5afa974b5b4835c0d6faf55da932cebce4f72478b5665a4d'

  # sogou.com is the official download host per the vendor homepage
  url "http://qqime.cdn.sogou.com/QQInput_Mac_Setup_#{version.gsub('.', '_')}.dmg"
  name 'QQ输入法'
  homepage 'http://qq.pinyin.cn/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "安装QQ输入法#{version.sub(%r{^(\d+\.\d+).*}, '\1')}.pkg"

  uninstall pkgutil: 'com.tencent.inputmethod.QQInput.*'
end
