cask :v1 => 'postgres' do
  version '9.4.1.0'
  sha256 'd07dd72ea4bdf92bb2b5abb62a57b1017dfb36435f3371cb1e1011deb36cba05'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
