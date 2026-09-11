cask "db-browser-for-sqlite@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20260909"
  sha256 arm:          "253528a0c97277affceb51071b90bbb4f14a16a99a7f26f712b396303dd95aa0",
         intel:        "253528a0c97277affceb51071b90bbb4f14a16a99a7f26f712b396303dd95aa0",
         arm64_linux:  "3ad3334d901f542b6256a3787dc173fe487602e94d6f7bf79fa50f1e0015d110",
         x86_64_linux: "cd7b59dff837e23b989ac96bd5ba87d56b0a80ffe460da6909c9336db7413408"

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
