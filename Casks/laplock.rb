cask 'laplock' do
  version '1.1.1'
  sha256 '5ef75506d5fb6c79bc5a4de0ea6feccd32120a180da30a185f2b886fb0bedf2d'

  # laplock.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://laplock.s3.amazonaws.com/Laplock-#{version}.dmg"
  appcast 'https://www.laplock.co/'
  name 'Laplock'
  homepage 'https://www.laplock.co/'

  pkg 'Laplock-Installer.pkg'

  uninstall pkgutil: [
                       'co.laplock.Laplock',
                       'co.laplock.Laplock-KEXT',
                     ]
end
