cask 'navicat-for-mariadb' do
  version '12.0.13'
  sha256 'a433a3e7a732fdcc942280f6d21e27f421c5057b9c7ad771b6ccbfd76aef3027'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note#M',
          checkpoint: '2b24e475590a81623e797baecea68b92cf2e4f7f2d212d272ba6ae6b9fcfe12c'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
