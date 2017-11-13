cask 'navicat-for-postgresql' do
  version '12.0.18'
  sha256 '50f9c800ff571406ee3e6c9b073454e41acc79bc613e3b2230f71106876c9d44'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '5d22dba09aa7c0f5f3e57334b883ac713fabb6da4cec8ef2085eb6b2e549973c'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
