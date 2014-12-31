cask :v1 => 'postgres' do
  version '9.4.0.0'
  sha256 '770f4b11d254a05962be639e72e1dbf9a5ac5544fc3d6f785cceaa5fb1c82c7c'

  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
