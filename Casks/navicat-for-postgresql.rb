cask 'navicat-for-postgresql' do
  version '12.1.8'
  sha256 'de3ef83c1f45b027ff14161d9b577a93c07c9aafb70422f00cea318123462abc'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
