cask :v1 => 'snapz-pro-x' do
  version '2.5.4'
  sha256 'b3b7dfd27222dfc45414cf820d83d14f12f6504af0b8e9009fd4b0a771b8894c'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.to_i}.dmg"
  appcast 'https://www.ambrosiasw.com/updates/profile.php/snapz_pro_x/release',
          :sha256 => '9bb22b961c94283f380351f4748cc5cea9e443b9c082da51231995cbf3313987'
  name 'Snapz Pro X'
  homepage 'http://www.ambrosiasw.com/utilities/snapzprox/'
  license :commercial

  pkg 'Snapz Pro X.pkg'

  uninstall :pkgutil => 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            :kext => 'com.AmbrosiaSW.AudioSupport'
end
