cask :v1 => 'postgres' do
  version '9.3.5.2'
  sha256 '8b7ddc0e721960fa0f50903d5f7d47a29de308d981e93ee3af0664547e3f322d'

  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
