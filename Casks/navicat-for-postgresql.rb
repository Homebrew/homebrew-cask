cask 'navicat-for-postgresql' do
  version '12.1.4'
  sha256 '0056efa735966be13b7bbe6921d20ad1cb04a3e37c8c058b5ea3c112ba052cc4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
