cask :v1 => 'postgres' do
  version '9.4.4.0'
  sha256 'da7799dbd219b19d91035f80745db1e06298501eb591a9525739340c68da2b79'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
