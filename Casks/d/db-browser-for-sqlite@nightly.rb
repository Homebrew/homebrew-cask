cask "db-browser-for-sqlite@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261115"
  sha256 arm:          "fbbd4de584e311d44f741c5b2d016c3b3988066c2c228bf4efd14e2c0b8ebe13",
         intel:        "fbbd4de584e311d44f741c5b2d016c3b3988066c2c228bf4efd14e2c0b8ebe13",
         arm64_linux:  "2079ebb8f5b082342609a7c59aa9becb1ffc8533bc1f5f83bcccc8fb7c4d1f09",
         x86_64_linux: "f5743ca17163a89a18043988ab6d4aa02f2fea8dc0e2fea328d58c771928c545"

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

    zap trash: "~/.config/sqlitebrowser"
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
