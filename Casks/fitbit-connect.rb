cask 'fitbit-connect' do
  version '20151109_2.0.1.6761'
  sha256 'ec813ffde89caa535350613808dee9c45a72fa24f98b1012459b877a7f0f9e2c'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'
  license :gratis

  pkg 'Install Fitbit Connect.pkg'

  uninstall script:  { executable: 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                       sudo:       true },
            pkgutil: 'com.fitbit.pkg.GalileoInstaller'
end
