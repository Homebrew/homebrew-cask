cask 'postgres' do
  version '9.5.1.0'
  sha256 'a315143b6ca5126043519c7d4cf79866bce0d00dd9356d6ee429af20a1e68ce0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '77c7508718e6c58152b12f7e7254dc09fe2a7f243d69eb50ab91a27c404a83cd'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
