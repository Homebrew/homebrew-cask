cask :v1 => 'fitbit-connect' do
  version '2.0.0.6563'
  sha256 '383a2bfbcd6455ef100846b49c25fedca0730310114bf03286e00403b86aeb4a'

  url "http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_20141029_#{version}.dmg"
  homepage 'http://www.fitbit.com/'
  license :unknown

  pkg 'Install Fitbit Connect.pkg'
  uninstall :script => { :executable => 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh' },
            :pkgutil => 'com.fitbit.pkg.GalileoInstaller'
end
