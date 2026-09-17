cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20260917"
  sha256 arm:          "269dcd08ba83477effed51a60e3e176e25830e2923651801c812e02623563dd4",
         intel:        "269dcd08ba83477effed51a60e3e176e25830e2923651801c812e02623563dd4",
         arm64_linux:  "7e3ea20434cf2c2c4cc3e0aa2456436bbb0626b5cb023cacd43ffc06c2422aa3",
         x86_64_linux: "2e3a51394496070736f274d660caf2d4f620ec85cf24a488db132db5e3ccac7c"

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
