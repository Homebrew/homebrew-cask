cask 'navicat-for-postgresql' do
  version '11.2.14'
  sha256 '98fb9715f540ffb77bfe8de54cf99480b88434dd0ef077958b2be0ace5988c13'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
