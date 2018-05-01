cask 'navicat-for-mariadb' do
  version '12.0.25'
  sha256 '82ab0db7e9c68e7502a13bcf29f31f44e99fc341bba70e76339645722592cb31'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: 'ca7665434d68b2e89637f84316faa5ab151c872bc17c477987a606e43a7c884b'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
