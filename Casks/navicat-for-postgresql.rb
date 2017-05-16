cask 'navicat-for-postgresql' do
  version '11.2.18'
  sha256 'c6098bf586280e7d9115a26f6dc1b665845855b5bf7d42d900fd063d21e4e24e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: 'b32845d48dcb1be5d2783cfdd1b39ec6ccfdd79dbb8522cfd0510ad7dc8effe7'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
