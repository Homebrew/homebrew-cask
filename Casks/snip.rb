class Snip < Cask
  url 'http://snip.qq.com/resources/Snip_V2.0_5771.dmg'
  homepage 'http://snip.qq.com/'
  version '2.0b5771'
  sha256 '2e9c2863d4412dbfa1323c1f2cb056c6a81b77d520c8b2a732cade1e7b40df00'
  install 'Snip_V2.0.pkg'
  uninstall :pkgutil => 'com.tencent.snip.Snip.pkg'
end
