cask 'postgres' do
  version '9.5.2'
  sha256 'c0efe0a0d975c5b1fb5bff1f3b5b6c16cb516beb3024413cabaa8c6fa562fa4a'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: 'c511f629f055cdad9d882f957a26349cbb0c9f85f7274d92bf97e1e639ba35e2'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
