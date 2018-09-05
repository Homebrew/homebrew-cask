cask 'navicat-for-postgresql' do
  version '12.1.5'
  sha256 '843cd2dabfc0153da5be94fd666adf1f07c9649bb2c76127ff1e9f0f7ed819fe'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
