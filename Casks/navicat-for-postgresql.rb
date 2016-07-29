cask 'navicat-for-postgresql' do
  version '11.2.11'
  sha256 '30a85fafc5470dbfe67d8e15fcca71f01c50d7c78811e40495c70f61e1221a18'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
