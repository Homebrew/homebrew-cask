cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20260922"
  sha256 arm:          "8d0352fa73a794dada896132d987894d196fdcf49d69ddd7dfe5e7e973919fe0",
         intel:        "8d0352fa73a794dada896132d987894d196fdcf49d69ddd7dfe5e7e973919fe0",
         arm64_linux:  "0b4a5ca45e25318d117e65ff0b9edb43b01f4ee474258ffdd5ba04148257c8e7",
         x86_64_linux: "02d5449107d08cefb27eaed8dea76aaa4e2d01181a77c214a6e3165617f6d3ca"

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
