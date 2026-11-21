cask "postgres-app" do
  version "3.0,14-15-16-17-18-19"
  sha256 "23b479f2c89cd1c3f16bb055424b0624405583007568912ee11268ee5b8a6c9d"

  url "https://github.com/PostgresApp/PostgresApp/releases/download/v#{version.csv.first}/Postgres-#{version.csv.first}-#{version.csv.second}.dmg"
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

  uninstall launchctl: "com.postgresapp.Postgres2LoginHelper",
            quit:      "com.postgresapp.Postgres2"

  zap trash: [
    "~/Library/Application Support/Postgres",
    "~/Library/Caches/com.postgresapp.Postgres*",
    "~/Library/Cookies/com.postgresapp.Postgres*.binarycookies",
    "~/Library/HTTPStorages/com.postgresapp.Postgres*",
    "~/Library/Preferences/com.postgresapp.Postgres*.plist",
  ]
end
