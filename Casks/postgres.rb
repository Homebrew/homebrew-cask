cask "postgres" do
  version "2.4"
  sha256 "fccb02e04d5001d57cd06beab12a8c9b93e97c1f9ff52232ae8bb9474084b31e"

  # github.com/PostgresApp/PostgresApp/ was verified as official when first introduced to the cask
  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-9.5-9.6-10-11-12-13.dmg"
  appcast "https://github.com/PostgresApp/PostgresApp/releases.atom"
  name "Postgres"
  homepage "https://postgresapp.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Postgres.app"

  uninstall launchctl: "com.postgresapp.Postgres#{version.major}LoginHelper",
            quit:      [
              "com.postgresapp.Postgres#{version.major}",
              "com.postgresapp.Postgres#{version.major}MenuHelper",
            ]

  zap trash: [
    "~/Library/Application Support/Postgres",
    "~/Library/Caches/com.postgresapp.Postgres#{version.major}",
    "~/Library/Cookies/com.postgresapp.Postgres#{version.major}.binarycookies",
    "~/Library/Preferences/com.postgresapp.Postgres#{version.major}.plist",
  ]
end
