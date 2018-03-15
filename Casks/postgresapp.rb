cask 'postgresapp' do
  version '2.1.3'
  sha256 '1498a39a4383b8cc59cc9318e535e6e5be8128350b85ff45dab353f7c50915b6'

  # github.com/PostgresApp was verified as official when first introduced to the cask
  url 'https://github.com/PostgresApp/PostgresApp/releases/download/v2.1.3/Postgres-2.1.3.dmg'
  name 'Postgres.app'
  homepage 'https://postgresapp.com/'

  app 'Postgres.app'
end
