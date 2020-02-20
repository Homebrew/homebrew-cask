cask 'navicat-for-mariadb' do
  version '15.0.10'
  sha256 'fbe1ff3c98f9517e00f0e17c80443a5a8f6f450ea2482327cca9c79718ec8ed3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
