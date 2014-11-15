class FitbitConnect < Cask
  url 'http://cache.fitbit.com/FitbitConnect/FitbitConnect_Mac_20141029_2.0.0.6563.dmg'
  homepage 'http://www.fitbit.com/'
  version '2.0.0.6563'
  sha256 '383a2bfbcd6455ef100846b49c25fedca0730310114bf03286e00403b86aeb4a'
  install 'Install Fitbit Connect.pkg'
  uninstall :script => { :executable => 'Uninstall Fitbit Connect.app/Contents/Resources/uninstall.sh' }
end
