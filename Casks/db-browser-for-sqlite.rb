cask "db-browser-for-sqlite" do
  version "3.12.1"
  sha256 "45c8789dc77461299a0aeb9eaae2d089086e76eebae31b45b7a0ee48c1c9e898"

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-#{version}-v2.dmg",
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
