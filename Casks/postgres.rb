cask :v1 => 'postgres' do
  version '9.4.0.1'
  sha256 '4e4b6b194925bd6eab0eeb2c2f4ae595f77d08dd63827883127fa1f9f1225678'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
