cask 'navicat-for-postgresql' do
  version '12.1.9'
  sha256 'fb7e00933171a92441a86a672b43306785abdd837f29f580c83a81e727b070b9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
