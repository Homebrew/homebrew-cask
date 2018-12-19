cask 'navicat-for-mariadb' do
  version '12.1.12'
  sha256 'ce36b6531706b3413ad30836e5b60cad7fe4dfee6e473136a897d8ee44d5e293'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
