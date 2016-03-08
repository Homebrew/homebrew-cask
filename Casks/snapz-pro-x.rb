cask 'snapz-pro-x' do
  version '2.6.0'
  sha256 'f603dae7a8fe64633f01ca2a53a1eed0907d17e3733f125fedb6d2e96b491b64'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.to_i}.dmg"
  appcast 'https://www.ambrosiasw.com/updates/profile.php/snapz_pro_x/release',
          checkpoint: 'f71ccac75a7cf7ab497f9e35eec3783c8d7c8a6b10d5bd55d6a467764ac81afa'
  name 'Snapz Pro X'
  homepage 'http://www.ambrosiasw.com/utilities/snapzprox/'
  license :commercial

  pkg 'Snapz Pro X.pkg'

  uninstall pkgutil: 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            kext:    'com.AmbrosiaSW.AudioSupport'
end
