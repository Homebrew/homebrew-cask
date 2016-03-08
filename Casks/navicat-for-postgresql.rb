cask 'navicat-for-postgresql' do
  version '11.2.9'
  sha256 '3c3bf221e70b1a2457383d37c5c701217615b6c3315f9385e8db1028db718c92'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
