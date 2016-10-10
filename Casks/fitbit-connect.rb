cask 'fitbit-connect' do
  version '20160602_2.0.1.6801'
  sha256 '2c51d17bb093465b703e645ef62f463e89660054b57583a993589e78583f7d6a'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'

  pkg 'Install Fitbit Connect.pkg'

  uninstall script:  { executable: 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                       sudo:       true },
            pkgutil: 'com.fitbit.pkg.GalileoInstaller'
end
