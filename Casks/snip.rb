class Snip < Cask
  url 'http://snip.qq.com/resources/Snip_V2.0_5771.dmg'
  homepage 'http://snip.qq.com/'
  version '2.0b5771'
  sha1 'cfe020db9bee8a7393620141b306c69f668d1e97'
  install 'Snip_V2.0.pkg'
  uninstall :pkgutil => 'com.tencent.snip.Snip.pkg'
end
