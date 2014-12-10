cask :v1 => 'snip' do
  version '2.0_5771'
  sha256 '2e9c2863d4412dbfa1323c1f2cb056c6a81b77d520c8b2a732cade1e7b40df00'

  url "http://snip.qq.com/resources/Snip_V#{version}.dmg"
  homepage 'http://snip.qq.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg "Snip_V#{version.sub(%r{^(\d+\.\d+).*},'\1')}.pkg"

  uninstall :pkgutil => 'com.tencent.snip.Snip.pkg'
end
