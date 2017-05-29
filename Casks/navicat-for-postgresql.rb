cask 'navicat-for-postgresql' do
  version '12.0.2'
  sha256 '7ea2b4ebdc589b7bd88aed2eda202a0e7bfb72bd03ca90e5995bad1c56acc658'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: '687ad5be37d8913e37adbfcb4d2fefbc1d3d1a5dca349ba08311545398c696de'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
