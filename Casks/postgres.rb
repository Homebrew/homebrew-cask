cask :v1 => 'postgres' do
  version '9.4.0.1'
  sha256 '38120bbeceb60d761c7fefb18d4cadee36049585238881f12e08f984d2674c8a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
