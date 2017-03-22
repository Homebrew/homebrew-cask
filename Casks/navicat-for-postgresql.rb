cask 'navicat-for-postgresql' do
  version '11.2.17'
  sha256 '426fcc44ffc1ae21a855a3d7a56c31dd47ab8ca517df1f782b81a2b45e31abdb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
