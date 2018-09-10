cask 'navicat-for-postgresql' do
  version '12.1.7'
  sha256 'bb1b0db5a4f2db5d6fdc897f16aa48efdd3cec5245848dadcedd00ca555f32dc'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
