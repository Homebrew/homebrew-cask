cask :v1 => 'snapz-pro-x' do
  version '2.6.0'
  sha256 'f603dae7a8fe64633f01ca2a53a1eed0907d17e3733f125fedb6d2e96b491b64'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.to_i}.dmg"
  appcast 'https://www.ambrosiasw.com/updates/profile.php/snapz_pro_x/release',
          :sha256 => '8fbbd653283a84ce8541f1f58670cc2fe9da88ed32b75a153bbabd69709d7314'
  name 'Snapz Pro X'
  homepage 'http://www.ambrosiasw.com/utilities/snapzprox/'
  license :commercial

  pkg 'Snapz Pro X.pkg'

  uninstall :pkgutil => 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            :kext => 'com.AmbrosiaSW.AudioSupport'
end
