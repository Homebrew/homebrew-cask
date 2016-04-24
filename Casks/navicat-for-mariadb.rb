cask 'navicat-for-mariadb' do
  version '11.2.10'
  sha256 'ff701269439079d16d1217fd5dcf6deb40ba80de07be0c77233fede3437d62bf'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'http://www.navicat.com/products/navicat-for-mariadb'
  license :commercial

  app 'Navicat for MariaDB.app'
end
