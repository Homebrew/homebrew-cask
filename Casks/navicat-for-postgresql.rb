cask 'navicat-for-postgresql' do
  version '11.2.13'
  sha256 '7b1285dae50a0552db502eb6cb5145386419b4d719058bf7fa0566020a536437'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'
  license :commercial

  app 'Navicat for PostgreSQL.app'
end
