cask 'postgres' do
  version '9.5.0.0'
  sha256 '2c8abeeac2a2569d70b394afe76aca4714bc021aa6ac2af2b58cd9ac20db4eb1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          :sha256 => '5abeef634defb81f15aff7a8ee8a22b1bfd0dd053ca7b5c8f6c4e40f07e14eda'
  name 'Postgres'
  homepage 'http://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
