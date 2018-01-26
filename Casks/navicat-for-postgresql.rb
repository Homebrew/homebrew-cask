cask 'navicat-for-postgresql' do
  version '12.0.22'
  sha256 '74b94e5a76cdbd2b58cc532a7e17110e8c1eab49e75adcb1d7d20f5b1061353d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: 'e5030859f1b241cdd40dfb66b3668eac29ea6b7e41a8fe4fa839e7b5298f6794'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
