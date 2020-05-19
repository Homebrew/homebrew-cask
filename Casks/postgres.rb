cask 'postgres' do
  version '2.3.5'
  sha256 '4c806bc5bce9626201968a1994dcdedb63660f150ba1810b811ba65c09493e38'

  # github.com/PostgresApp/PostgresApp/ was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-10-11-12.dmg"
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
