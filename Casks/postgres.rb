cask "postgres" do
  version "2.4.2"
  sha256 "4ea80659448cb98edd16a53e664672a558a1b64d5c960393dd72456da6772231"

  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-9.5-9.6-10-11-12-13.dmg",
      verified: "github.com/PostgresApp/PostgresApp/"
  name "Postgres"
  homepage "https://postgresapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
