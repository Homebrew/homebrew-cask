cask 'postgres' do
  version '2.0.3'
  sha256 'a58cd86b3438c60055b98c607c5acb929082bb6bd9a6af92c240624c247655aa'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '9cec0b8c51cc023f904ccec9ca04a054d509a63087ce64cff35d819064be1de8'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true

  app 'Postgres.app'

  zap delete: [
                '~/Library/Application Support/Postgres',
                "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
                "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
                "~/Library/LaunchAgents/com.postgresapp.Postgres#{version.major}LoginHelper.plist",
                "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
              ]
end
