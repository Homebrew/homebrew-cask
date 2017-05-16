cask 'navicat-for-postgresql' do
  version '11.2.18'
  sha256 'c6098bf586280e7d9115a26f6dc1b665845855b5bf7d42d900fd063d21e4e24e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
