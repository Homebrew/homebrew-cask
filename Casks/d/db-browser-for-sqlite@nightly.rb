cask "db-browser-for-sqlite@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20260928"
  sha256 arm:          "bd426ed3da11883a403f37415f5caee1e6850d41591eb2be5a238d945184eda0",
         intel:        "bd426ed3da11883a403f37415f5caee1e6850d41591eb2be5a238d945184eda0",
         arm64_linux:  "6e51216ae6869b8e0ccb22bd5bf8a86267525d235e0f3be2678c7aa6d76ef93e",
         x86_64_linux: "0fdc4414044ae8dbb1952f2dca2f504fa82f92d72076647a8bcc1569327ae4fe"

  on_macos do
    app "DB Browser for SQLite Nightly.app"

    zap trash: [
      "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
      "~/Library/Preferences/net.sourceforge.sqlitebrowser.plist",
      "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
    ]
  end
  on_linux do
    app_image "DB.Browser.for.SQLite-#{version}-#{arch}.AppImage",
              target: "DBBrowserForSQLiteNightly.AppImage"
  end

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/nightly/DB.Browser.for.SQLite-#{os}#{version}#{url_end}"
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
end
