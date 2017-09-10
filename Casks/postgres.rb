cask 'postgres' do
  version '2.0.5'
  sha256 '7d842467266ce12360bee0aa285d453b1662e3389d1b2a8e5a3679849f4578bf'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '16e8eef992742b0a7afe01c477fd6c9886128e361efb828827bde40a79f09bcc'
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
