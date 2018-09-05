cask 'laplock' do
  version '1.1.1'
  sha256 '5ef75506d5fb6c79bc5a4de0ea6feccd32120a180da30a185f2b886fb0bedf2d'

  # s3-eu-west-1.amazonaws.com/laplock was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/laplock/Laplock-#{version}.dmg"
  name 'Laplock'
  homepage 'https://www.laplock.co/'

  pkg 'Laplock-Installer.pkg'

  uninstall pkgutil: [
                       'co.laplock.Laplock',
                       'co.laplock.Laplock-KEXT',
                     ]
end
