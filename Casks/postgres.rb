cask 'postgres' do
  version '2.1.1'
  sha256 'ac0656b522a58fd337931313f09509c09610c4a6078fe0b8e469e69af1e1750b'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom',
          checkpoint: '0ee22c7ae06eb17d6ea9d65ee3ee3233b4e69e3d6ebcbcaaac63081366104ca7'
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
