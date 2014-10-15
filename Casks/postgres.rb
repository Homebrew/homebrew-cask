class Postgres < Cask
  version '9.3.5.1'
  sha256 '0dd20b941a4b356f3d0845e76a220a22f5d07ed047c0029b997829a0f44800d9'

  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
