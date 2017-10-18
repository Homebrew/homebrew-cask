cask 'navicat-for-postgresql' do
  version '12.0.14'
  sha256 '0e2e857afdad9d59b6b87dc3ef7e3b12de92f8bc56aa5b337e46777d69afeef3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: 'f3b7a2c39e4abddd57528e9a71782ae5f407336a6341df71d8013e93e4480508'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
