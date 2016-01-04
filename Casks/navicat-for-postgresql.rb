cask 'navicat-for-postgresql' do
  version '11.2.6'
  sha256 '308493dfdf9ee08b1ec7c0a1d2d36378f5c9089ccfa02a244efbd4ce54ab7b71'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
