cask :v1 => 'fitbit-connect' do
  version '1.0.3.5510'
  sha256 '14ffe8fdc6040cbcb17e551e04cdbe1dabcff99641eed6a2495631d2b83ffc0f'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_20140519_#{version}.dmg"
  homepage 'http://www.fitbit.com/'
  license :unknown

  pkg 'Install Fitbit Connect.pkg'
  uninstall :script => { :executable => 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh' },
            :pkgutil => 'com.fitbit.pkg.GalileoInstaller'
end
