cask 'snapz-pro-x' do
  version '2.6.1'
  sha256 'f979b464768bc2bf4e9fe9ed34e8914b0eba98af08f26c3a1ac298fde533541f'

  url "http://downloads3.ambrosiasw.com/snapzprox/essentials/SnapzProX#{version.major}.dmg"
  appcast 'https://www.ambrosiasw.com/updates/profile.php/snapz_pro_x/release',
          checkpoint: '0da65f1139e0e1fa8a17f1372dabb22af4873e4ff989f7acd6585749d1a03a0f'
  name 'Snapz Pro X'
  homepage 'https://www.ambrosiasw.com/utilities/snapzprox/'

  pkg 'Snapz Pro X.pkg'

  uninstall pkgutil: 'com.ambrosiasw.pkg.(snapz|audiosupport)',
            kext:    'com.AmbrosiaSW.AudioSupport'
end
