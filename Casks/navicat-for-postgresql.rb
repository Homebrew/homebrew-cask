cask 'navicat-for-postgresql' do
  version '12.0.15'
  sha256 'e09d4d09366789c12c36e51950a63b54120fd970bb242f6a93440cb56d1e2d2f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-postgresql-release-note',
          checkpoint: 'fbecfed612e5f5aa5de874f408db86db301e60e182705f08a40538b533e712d9'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
