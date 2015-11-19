cask :v1 => 'fitbit-connect' do
  version '20150619_2.0.0.6583'
  sha256 '89f3c1f14944a2edd85b68bfeafecf3b00245551d08f8f785dcdedc9b0aa404d'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_#{version}.dmg"
  name 'Fitbit Connect'
  homepage 'https://www.fitbit.com/'
  license :gratis

  pkg 'Install Fitbit Connect.pkg'

  uninstall :script => { :executable => 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh',
                         :sudo => true },
            :pkgutil => 'com.fitbit.pkg.GalileoInstaller'
end
