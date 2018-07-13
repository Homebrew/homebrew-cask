cask 'navicat-for-postgresql' do
  version '12.0.28'
  sha256 'ff07dd4f3bccadccdbc3ffc82fdc58b6c0b7b2e155ea120181af472a14ff2bcc'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
