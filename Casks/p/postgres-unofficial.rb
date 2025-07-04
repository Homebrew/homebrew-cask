cask "postgres-unofficial" do
  version "2.8.2,13-14-15-16-17"
  sha256 "9f27ba1f30916a45f2d801647de1f7dac6e4b4879403c225103258612eeb1105"

  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version.csv.first}/Postgres-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/PostgresApp/PostgresApp/"
  name "Postgres"
  desc "App wrapper for Postgres"
  homepage "https://postgresapp.com/"

  livecheck do
    url :url
    regex(/^Postgres[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
