cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261001"
  sha256 arm:          "74ba11f164adbab4ef8a0cd791aa3d1897672899b3d8127a3f77a2b45ad0ed4e",
         intel:        "74ba11f164adbab4ef8a0cd791aa3d1897672899b3d8127a3f77a2b45ad0ed4e",
         arm64_linux:  "4232712396fcd4cf7f8e36ef8c03430d451bccc2b1db89cdee7a05c444b68910",
         x86_64_linux: "ebe1cce23db429743626a0e7c044f54b4523e79c8e562ecd9d3ed83ebea314a5"

  on_macos do
    app "DB Browser for SQLCipher Nightly.app"

    zap trash: [
      "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
      "~/Library/Preferences/net.sourceforge.sqlitebrowser.plist",
      "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
    ]
  end
  on_linux do
    app_image "DB.Browser.for.SQLCipher-#{version}-#{arch}.AppImage",
              target: "DBBrowserForSQLCipherNightly.AppImage"
  end

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/nightly/DB.Browser.for.SQLCipher-#{os}#{version}#{url_end}"
  name "DB Browser for SQLCipher Nightly"
  desc "Database browser for SQLCipher"
  homepage "https://sqlitebrowser.org/"

  livecheck do
    cask "db-browser-for-sqlite@nightly"
    regex(/^DB[._-]Browser[._-]for[._-]SQLCipher[._-]universal[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end
end
