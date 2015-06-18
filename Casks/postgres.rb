cask :v1 => 'postgres' do
  version '9.4.2.0'
  sha256 'cf567b299697ac9503775c7ad021697e32acd6024470bc937763e8eb4fbe576d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
