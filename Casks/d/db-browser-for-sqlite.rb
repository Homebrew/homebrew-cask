cask "db-browser-for-sqlite" do
  version "3.13.1"
  sha256 "a641cfbfcc2ce609f07de44a35134dab53485ecc18e6d9afa297b514d74bd75e"

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-v#{version}.dmg",
      verified: "github.com/sqlitebrowser/sqlitebrowser/"
  name "DB Browser for SQLite"
  desc "Browser for SQLite databases"
  homepage "https://sqlitebrowser.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DB Browser for SQLite.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
