cask 'postgres' do
  version '9.5.1.0'
  sha256 'a315143b6ca5126043519c7d4cf79866bce0d00dd9356d6ee429af20a1e68ce0'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '4a81d9b0abbe1ff337e309b20fbbbebd16242db161dd0640eb3fe22475318113'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
