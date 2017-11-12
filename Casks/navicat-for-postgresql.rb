cask 'navicat-for-postgresql' do
  version '12.0.17'
  sha256 '23e124f2ae80778ef780507441aaa72a2d05e259152f26a3bb18749c1bf5d4a4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '55005bb76022ef4c7ac7b8b5575716695a39b4a2474bb9cf6f26dfa9055f974e'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
