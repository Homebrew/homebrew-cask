cask 'navicat-for-postgresql' do
  version '12.0.19'
  sha256 'c36589c1808db80793cc268eb2c00f95e772937c9d75fa79a0b01b3e773cc53c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '83461ad788bd536f09477c4890c438805006a24b2423d714cf2d1139629e4575'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
