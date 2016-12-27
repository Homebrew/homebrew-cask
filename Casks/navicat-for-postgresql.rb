cask 'navicat-for-postgresql' do
  version '11.2.16'
  sha256 'ce8a0277657c90210e0e9fadcc12a1d0593561ef85f700de84ca37e93cb17563'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
