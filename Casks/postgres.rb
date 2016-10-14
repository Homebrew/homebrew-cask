cask 'postgres' do
  version '9.6.0'
  sha256 '5f3c00c67e40bf6c201e7aff6209946d4f14791bf1ac1e2ff0ca2e5a987640b3'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: 'f917159368356ab5e54e22dfa7f13c728d1846fe2e5e3cdd8f21fb5c749681cf'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  app 'Postgres.app'
end
