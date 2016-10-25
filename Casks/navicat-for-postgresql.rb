cask 'navicat-for-postgresql' do
  version '11.2.15'
  sha256 '36433d22ddfc9e463abe7b72ac4fb5a2e61e4e77c4a033e9f0365a8ca1ef6b5e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
