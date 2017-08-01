cask 'postgres' do
  version '2.0.3'
  sha256 'a58cd86b3438c60055b98c607c5acb929082bb6bd9a6af92c240624c247655aa'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '973c5f61605b955e6923dc970e05dd407316b4a1511c0fff21f79be178f22675'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true

  app 'Postgres.app'

  uninstall launchctl: "com.postgresapp.Postgres#{version.major}LoginHelper",
            quit:      [
                         "com.postgresapp.Postgres#{version.major}",
                         "com.postgresapp.Postgres#{version.major}MenuHelper",
                       ]

  zap delete: [
                "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
                "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
              ],
      trash:  [
                '~/Library/Application Support/Postgres',
                "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
              ]
end
