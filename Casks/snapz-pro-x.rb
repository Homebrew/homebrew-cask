cask 'snapz-pro-x' do
  version '2.6.0'
  sha256 'f603dae7a8fe64633f01ca2a53a1eed0907d17e3733f125fedb6d2e96b491b64'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.major}.dmg"
  appcast 'https://www.ambrosiasw.com/updates/profile.php/snapz_pro_x/release',
          checkpoint: 'ee5f84078bfdb59c9c445844a98e6b26c3f39bdbbc7515af1f85c0fe56208fff'
  name 'Snapz Pro X'
  homepage 'http://www.ambrosiasw.com/utilities/snapzprox/'
  license :commercial

  pkg 'Snapz Pro X.pkg'

  uninstall pkgutil: 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            kext:    'com.AmbrosiaSW.AudioSupport'
end
