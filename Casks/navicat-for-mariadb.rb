cask 'navicat-for-mariadb' do
  version '12.1.22'
  sha256 'ed9ac7cf721a1dce5a393e5b38f75f2eb35424b1fcef4795f5b61a226d282390'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
