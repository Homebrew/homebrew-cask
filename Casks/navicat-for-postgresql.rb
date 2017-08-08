cask 'navicat-for-postgresql' do
  version '12.0.11'
  sha256 'f1ca1da0668727d24ca464f2914ad55cad25336ef0777376043e5520bd4b28fb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: 'ff02dfdf055cbd32031b54d04f1d65c7d1cfa5491479935f5c574f808ab881d4'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
