cask 'navicat-for-mariadb' do
  version '11.2.14'
  sha256 '73f2b864cafbbeed2430d61b0463fdd9e68996215a72e1d900663a9922793803'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
