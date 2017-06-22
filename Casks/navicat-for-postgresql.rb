cask 'navicat-for-postgresql' do
  version '12.0.5'
  sha256 '3b176125455105d758814aa2ca2c8b66cb572acdeb5b99d62871f990ce6b6a6a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: '5027b8d4261d8b3912c98280e2b0abe784daa621a055d0dbf9e2d08e20be90d4'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
