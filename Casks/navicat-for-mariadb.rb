cask 'navicat-for-mariadb' do
  version '15.0.6'
  sha256 '79fa0d9a67ad131e8d257a5bc9b3aea010b48b4a2b5eafab06bc8f4ff238b8c9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
