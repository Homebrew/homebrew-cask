cask 'navicat-for-postgresql' do
  version '12.0.20'
  sha256 '207d510e6d3117f72b8681395502cf2eb869242a62284ddfb7a18c25e84eee16'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '22dd1c33a056d670771100fff9d92a584136e9743a2743089a5c5509af1d0283'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
