cask "db-browser-for-sqlite" do
  arch arm: "-arm64"

  on_catalina :or_older do
    version "3.12.2"
    sha256 arm:   "0c2076e4479cb9db5c85123cfe9750641f92566694ff9f6c99906321a2c424e8",
           intel: "546d57b6c88c2be7517759c016c0bf0313dfcc14adfcb43967f3c5d24657f366"

    url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite#{arch}-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.13.0"
    sha256 "dfa72811ab9faa522586a31bf680db1604442e35a2725f0aed77d5f66388724b"

    url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-v#{version}.dmg",
        verified: "github.com/sqlitebrowser/sqlitebrowser/"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "DB Browser for SQLite"
  desc "Browser for SQLite databases"
  homepage "https://sqlitebrowser.org/"

  app "DB Browser for SQLite.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
