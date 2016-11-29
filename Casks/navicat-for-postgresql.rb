cask 'navicat-for-postgresql' do
  version '11.2.15'
  sha256 'b627e9d24e6eb3fead7b9cf7bad2285725051854558a5d2f0e41e90bbd56f1c1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
