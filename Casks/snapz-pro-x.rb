cask :v1 => 'snapz-pro-x' do
  version '2.5.4'
  sha256 'b3b7dfd27222dfc45414cf820d83d14f12f6504af0b8e9009fd4b0a771b8894c'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.to_i}.dmg"
  homepage 'http://www.ambrosiasw.com/utilities/snapzprox/'
  license :commercial

  pkg 'Snapz Pro X.pkg'

  uninstall :pkgutil => 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            :kext => 'com.AmbrosiaSW.AudioSupport'
end
