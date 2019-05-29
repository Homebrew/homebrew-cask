cask 'postgres' do
  version '2.2.3'
  sha256 'e29b27aaf7b8a2e0aac0a1229aede761c45897bd3fc6a88c889217ae40abda16'

  # github.com/PostgresApp/PostgresApp was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-9.5-9.6-10-11.dmg"
  appcast 'https://github.com/PostgresApp/PostgresApp/releases.atom'
  name 'Postgres'
  homepage 'https://postgresapp.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
