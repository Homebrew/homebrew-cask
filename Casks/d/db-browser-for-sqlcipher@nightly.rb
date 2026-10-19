cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261019"
  sha256 arm:          "d6fe097845be75a66b99d24516daa3df8df05c1b8b5e0218f55bb7260a638cbf",
         intel:        "d6fe097845be75a66b99d24516daa3df8df05c1b8b5e0218f55bb7260a638cbf",
         arm64_linux:  "73942d6a080e0de883a85c7680b5b6d66ce8180e496141a9425cc114d9840d1d",
         x86_64_linux: "8158416d8b6a846c0b56f51a08d378c6ef4fa7a878a0179ed3640daba8ed47d1"

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
