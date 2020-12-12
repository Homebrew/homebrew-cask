cask "db-browser-for-sqlite" do
  version "3.12.1"
  sha256 "45c8789dc77461299a0aeb9eaae2d089086e76eebae31b45b7a0ee48c1c9e898"

  # github.com/sqlitebrowser/sqlitebrowser/ was verified as official when first introduced to the cask
  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-#{version}-v2.dmg"
  appcast "https://github.com/sqlitebrowser/sqlitebrowser/releases.atom"
  name "DB Browser for SQLite"
  desc "Database browser for SQLite (DB4S) project"
  homepage "https://sqlitebrowser.org/"

  app "DB Browser for SQLite.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
