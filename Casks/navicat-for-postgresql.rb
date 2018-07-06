cask 'navicat-for-postgresql' do
  version '12.0.27'
  sha256 '3b0d5ddf1b3b79aeb58305457ea75b8ca159d6f8b683f469896cd28cacb896e1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
