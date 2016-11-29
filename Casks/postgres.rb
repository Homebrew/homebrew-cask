cask 'postgres' do
  version '9.6.1'
  sha256 '780ccd723baa52f7620471cb74d5cdd58040502f0f485ed667b5ccb6a649d3ac'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: 'dd955be34d429304a39b3efa812eb87ad3e9df661aa5caf71443622765316397'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  app 'Postgres.app'
end
