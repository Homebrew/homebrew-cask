cask 'navicat-for-mariadb' do
  version '11.2.11'
  sha256 'ab10104264087a8cf3304c62cd9c3e8c0ce3da6373a7f9079bb3697cf6b6baa9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
