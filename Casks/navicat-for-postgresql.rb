cask 'navicat-for-postgresql' do
  version '12.0.26'
  sha256 'a86c818d32692ca322025e9a24cfef5ddd2cf5c7e971f8c141f7d1309b186687'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: 'ee938097707b8f2534bba4947dde5c0447f817e8af6e2554e9d2c0c647cdd48c'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
