cask "db-browser-for-sqlite@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261001"
  sha256 arm:          "4e6f5a0aadbcac5b06ae75434b6ca85295af4ed8d5ee454aeccd801a1342cb88",
         intel:        "4e6f5a0aadbcac5b06ae75434b6ca85295af4ed8d5ee454aeccd801a1342cb88",
         arm64_linux:  "458c32df12d1388791a45d060975767a5e5948c88f32aaa347a52f8a6ccfc4c9",
         x86_64_linux: "f8521574f1587e566f8fbafafbf59bb4b715004f25dff60c10f8b966c7e0192b"

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
