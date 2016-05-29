cask 'postgres' do
  version '9.5.3'
  sha256 '751b72b270cac9fcd35abbd761829b132e646d664fa1acca28a00feb11a7b26c'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '8f75d7d7fd811ee6135147a9caf6d4ed9807945cb83d2074aac283b458d3d1c9'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
