cask 'fitbit-connect' do
  version '2.0.1.6809-2016-08-09'
  sha256 '1edc086c380d24f63301a167b61e06f50ebcb57dbef7ddffa22878b313ea378c'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect-v#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'

  pkg 'Install Fitbit Connect.pkg'

  uninstall script:  {
                       executable: 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                       sudo:       true,
                     },
            pkgutil: 'com.fitbit.pkg.GalileoInstaller'
end
