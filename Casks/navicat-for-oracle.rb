cask 'navicat-for-oracle' do
  version '15.0.8'
  sha256 '7c6312f3f81dc476d9e39527e200d67c6bc28b5e444846509030faabe8762580'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
