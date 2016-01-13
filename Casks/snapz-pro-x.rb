cask 'snapz-pro-x' do
  version '2.6.0'
  sha256 'f603dae7a8fe64633f01ca2a53a1eed0907d17e3733f125fedb6d2e96b491b64'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.to_i}.dmg"
  appcast 'https://www.ambrosiasw.com/updates/profile.php/snapz_pro_x/release',
          :sha256 => '77800abfc3516a95df06bd546b09042461554335bc47b065fd5b54d006e1fcd1'
  name 'Snapz Pro X'
  homepage 'http://www.ambrosiasw.com/utilities/snapzprox/'
  license :commercial

  pkg 'Snapz Pro X.pkg'

  uninstall :pkgutil => 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            :kext    => 'com.AmbrosiaSW.AudioSupport'
end
