cask 'navicat-for-postgresql' do
  version '12.0.7'
  sha256 'f97a8b95e31d72cb5bd9754b227a41d90ace8c1914fea8fcaa410552ec12f53b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: '983f51690a7dbaf69f46401a492560a272267ae3be693f8900e73934f5eaf9b4'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
