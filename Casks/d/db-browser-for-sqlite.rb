cask "db-browser-for-sqlite" do
  url_end = on_system_conditional macos: ".dmg", linux: "-x86.64-v2.AppImage"

  version "3.13.1"
  sha256 arm:          "a641cfbfcc2ce609f07de44a35134dab53485ecc18e6d9afa297b514d74bd75e",
         intel:        "a641cfbfcc2ce609f07de44a35134dab53485ecc18e6d9afa297b514d74bd75e",
         x86_64_linux: "c2fd0c27c84777747527e1b28deccc824bc88eeb47f36a9575bf1ba0a5a38453"

  on_macos do
    app "DB Browser for SQLite.app"

    zap trash: [
      "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
      "~/Library/Preferences/net.sourceforge.sqlitebrowser.plist",
      "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "DB.Browser.for.SQLite-v#{version}-x86.64-v2.AppImage",
              target: "DBBrowserForSQLite.AppImage"
  end

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/v#{version}/DB.Browser.for.SQLite-v#{version}#{url_end}"
  name "DB Browser for SQLite"
  desc "Browser for SQLite databases"
  homepage "https://sqlitebrowser.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
