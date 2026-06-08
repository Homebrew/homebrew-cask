cask "postgres-app" do
  version "2.9.5,14-15-16-17-18"
  sha256 "40c459d6e4a0af62545d52e7ad48a69b1b20aa0d9f2941590aa9a92cf7d1ffaa"

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
  depends_on :macos

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
