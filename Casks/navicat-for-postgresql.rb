cask 'navicat-for-postgresql' do
  version '11.2.7'
  sha256 'a32050c83ff37868d7b043e9f98441a78f1bf3043834bd97918a0fc5f2e27450'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
