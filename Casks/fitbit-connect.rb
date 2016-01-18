cask 'fitbit-connect' do
  version '20151030_2.0.1.6757'
  sha256 '7cfb4822e7b6b70652b80d550cfba7b33ea5fdac07c213ad034ebdb5f409b14a'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'
  license :gratis

  pkg 'Install Fitbit Connect.pkg'

  uninstall script:  { executable: 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                       sudo:       true },
            pkgutil: 'com.fitbit.pkg.GalileoInstaller'
end
