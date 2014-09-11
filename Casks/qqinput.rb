class Qqinput < Cask
  version '2.8.86.400'
  sha256 '5b90cf604230013d5afa974b5b4835c0d6faf55da932cebce4f72478b5665a4d'

  url 'http://qqime.cdn.sogou.com/QQInput_Mac_Setup_2_8_86_400.dmg'
  homepage 'http://qq.pinyin.cn/'

  pkg '安装QQ输入法2.8.pkg'
  uninstall :pkgutil => 'com.tencent.inputmethod.QQInput.*'
end
