cask 'navicat-for-postgresql' do
  version '12.0.23'
  sha256 '62688e97dace5bc9c91cebd32dc123fcb09191a5b232889f978c8e253e4690e9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-postgresql-release-note',
          checkpoint: '290960db13b3dac7d3f795f945cae9ab6fca0ef90a65483663fcd57673619517'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
