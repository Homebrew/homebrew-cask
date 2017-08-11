cask 'postgres' do
  version '2.0.4'
  sha256 '505eebee7dffd3a37b3801279e0cdf31e9fc8ebf18942bc69933133847f18b48'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: 'f1a89c7384d7a8e302b2a95cf96c25b73adc4c0f886b6fda53a78e66e875f8b7'
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
