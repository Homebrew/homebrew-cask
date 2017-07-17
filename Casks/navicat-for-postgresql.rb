cask 'navicat-for-postgresql' do
  version '12.0.9'
  sha256 '5912980f962ce782c1329d4741800646ed385655dc8a9f9922281c0e844f9726'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: '0a83e2f2de01bc41ba38fb1861f3d7fdfdc45aa76d435139b59ac4d773e9b262'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
