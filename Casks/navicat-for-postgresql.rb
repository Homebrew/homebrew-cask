cask 'navicat-for-postgresql' do
  version '12.0.24'
  sha256 '849636d08384d9625d9d811a3cca80f5f92ad3d242188d45dee9b64ee9e2baf0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '4d74131ba30bfde7255e864bf12ad112fedc2233e3962c8c3ace242b4e482024'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
