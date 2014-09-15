class Postgres < Cask
  version '9.3.4.2'
  sha256 '8a7d67aaea2546df7639416453b929c2ec0092393f00e5e0bbbcf20458ea39a1'

  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  homepage 'http://postgresapp.com/'

  app 'Postgres.app'
end
