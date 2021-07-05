cask "db-browser-for-sqlite" do
  version "3.12.2"
  sha256 "546d57b6c88c2be7517759c016c0bf0313dfcc14adfcb43967f3c5d24657f366"

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-#{version}.dmg",
      verified: "github.com/sqlitebrowser/sqlitebrowser/"
  name "DB Browser for SQLite"
  desc "Browser for SQLite databases"
  homepage "https://sqlitebrowser.org/"

  livecheck do
    url "https://github.com/sqlitebrowser/sqlitebrowser/releases"
    strategy :page_match
    regex(%r{href=.*?/DB\.Browser\.for\.SQLite-(\d+(?:\.\d+)*)(?:-v\d+)?\.dmg}i)
  end

  app "DB Browser for SQLite.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
