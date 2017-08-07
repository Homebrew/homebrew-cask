cask 'navicat-for-postgresql' do
  version '12.0.10'
  sha256 '944896e36a144ab619fff46b451a415e7399b725af529da7a99d69538d295fdd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: '6b3b6734e15ce4c83f3e6978914319aedd4bdfbdac7a48b9a4116f4f1f526574'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
