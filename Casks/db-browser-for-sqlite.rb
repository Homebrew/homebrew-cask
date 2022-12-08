cask "db-browser-for-sqlite" do
  arch arm: "arm64", intel: "x64"

  version "3.12.2"
  
  on_intel do
    sha256 "546d57b6c88c2be7517759c016c0bf0313dfcc14adfcb43967f3c5d24657f366"

    url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-#{version}.dmg",
        verified: "github.com/sqlitebrowser/sqlitebrowser/"
  end
  on_arm do
    sha256 "0c2076e4479cb9db5c85123cfe9750641f92566694ff9f6c99906321a2c424e8"

    url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-arm64-#{version}.dmg",
        verified: "github.com/sqlitebrowser/sqlitebrowser/"
  end
  
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
