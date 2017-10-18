cask 'postgres' do
  version '2.1'
  sha256 'aac88f5072ae8b93d32e0530c08da0c0e361324e9217dfcd15d2bd06f762387c'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '2acc426803b758b7347f1de0ba8615383a043d702d69482017ac8a1dcddd4a9d'
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
