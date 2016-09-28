cask 'postgres' do
  version '9.5.4.2'
  sha256 'df1404b5b3f220543feaf0d1036628536ea141fd07bb3d19b462e1ff0c1b234d'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '92ab71a51b8bcda2fae5f713ced76c1b603758af08ffc38aa61b9403f3ea3c4e'
  name 'Postgres'
  homepage 'https://postgresapp.com/'
  license :oss

  app 'Postgres.app'
end
