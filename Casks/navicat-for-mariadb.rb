cask 'navicat-for-mariadb' do
  version '12.0.10'
  sha256 'bde6a69dad45c80fdd0ca9b8ec6d5308e231d7e0aa8f9d77da2ef48b3f3bf54a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note#M',
          checkpoint: '8a751685c8288fac250fa559e99b8347c3295f80bf97ff1697f9ebbca575b8ba'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
