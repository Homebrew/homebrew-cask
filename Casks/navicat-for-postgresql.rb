cask 'navicat-for-postgresql' do
  version '12.0.25'
  sha256 'a4da0e772a0b02a04a6fde50b639f2f4827dc4f84a866650d9c87447d517b2d5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '8313f25992aa93b408080a32e79332f26dd1f597a1d832a2b51a227d1d8fdb4a'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
