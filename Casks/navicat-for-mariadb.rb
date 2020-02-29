cask 'navicat-for-mariadb' do
  version '15.0.11'
  sha256 '066282dc92f4f6ee1ddce125f281e7aa89d3f355266003968c50dc6c8847fb3a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
