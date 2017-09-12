cask 'navicat-for-postgresql' do
  version '12.0.13'
  sha256 '86cecf7ce39e0eec562c4ed9224eb2d5d6b8e8d77626dfc56106976522a5ad3a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: 'dd5bdda2015254cae1e37febd33a3bb82e4bea013890493aa10e4259492c8d4a'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
