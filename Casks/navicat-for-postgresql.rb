cask 'navicat-for-postgresql' do
  version '11.2.10'
  sha256 '09676f66dec5b0076e8270d6eb4022231ea0c56b5700a6e1beb4caa6e297d7d1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'http://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
