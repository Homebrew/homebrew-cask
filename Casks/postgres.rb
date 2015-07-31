cask :v1 => 'postgres' do
  version '9.4.4.1'
  sha256 '16647ae93735005ba0d386229b4cec1bc0dd9cb5f487a886c9e71e6153b5df1a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
