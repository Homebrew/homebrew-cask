cask 'navicat-for-mariadb' do
  version '15.0.17'
  sha256 '5019da94b610254dc5e2ca1fb1de6a08b1f6b413526e75aa1d601839a06b940c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
