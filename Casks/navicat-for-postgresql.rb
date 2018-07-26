cask 'navicat-for-postgresql' do
  version '12.1.3'
  sha256 'b3a01032dd78842fde3a2c116429dfbf7ce2a0e773a26ecc0e72a43e7b0f4179'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
