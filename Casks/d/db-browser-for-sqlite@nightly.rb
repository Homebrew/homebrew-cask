cask "db-browser-for-sqlite@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20260810"

  on_macos do
    sha256 "d9a91be0ccb4a069f79d6d883519bfd8920e8ba199bf07919e34d44c32bb044e"

    app "DB Browser for SQLite Nightly.app"

    zap trash: [
      "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
      "~/Library/Preferences/net.sourceforge.sqlitebrowser.plist",
      "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "34fdd933f59d702fd22b61f88b2f9a21c023fbad567dacbc423929b5e57ad314",
           x86_64_linux: "de77eed0bb53d9cae4fcd0d57251c62f9b5f8d0598452cbee03310c62632374d"

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
