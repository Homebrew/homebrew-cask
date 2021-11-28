cask "postgres-unofficial" do
  version "2.5.2"
  sha256 "e5514489872776b1c2eeedbd210c481d51ef27f8f7551353a761b245a977a612"

  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version}/Postgres-#{version}-9.6-10-11-12-13-14.dmg",
      verified: "github.com/PostgresApp/PostgresApp/"
  name "Postgres"
  desc "App wrapper for Postgres"
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
