cask "db-browser-for-sqlite@nightly" do
  version "20260801"
  sha256 "e720548462034f78a3719b23cdbc6d18688b2afa581ab272cb9489725eb79bea"

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/nightly/DB.Browser.for.SQLite-universal_#{version}.dmg",
      verified: "github.com/sqlitebrowser/sqlitebrowser/"
  name "DB Browser for SQLite Nightly"
  desc "Database browser for SQLite"
  homepage "https://sqlitebrowser.org/"

  livecheck do
    url :url
    regex(/^DB[._-]Browser[._-]for[._-]SQLite[._-]universal[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["tag_name"] != "nightly"
        next if release["draft"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on :macos

  app "DB Browser for SQLite Nightly.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Preferences/net.sourceforge.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
