cask 'postgres' do
  version '2.1.5'
  sha256 '91296fa25ec45dd099f47d287a05ff07599b30aed4e6d665388b8a56f0b5cf8b'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true

  app 'Postgres.app'

  uninstall launchctl: "com.postgresapp.Postgres#{version.major}LoginHelper",
            quit:      [
                         "com.postgresapp.Postgres#{version.major}",
                         "com.postgresapp.Postgres#{version.major}MenuHelper",
                       ]

  zap trash: [
               '~/Library/Application Support/Postgres',
               "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
               "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
               "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
             ]
end
