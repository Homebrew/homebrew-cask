cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261102"
  sha256 arm:          "b89850d699f6693d23daa8b75048c2e514fa6c3d63df35def66344dc1ba51c3b",
         intel:        "b89850d699f6693d23daa8b75048c2e514fa6c3d63df35def66344dc1ba51c3b",
         arm64_linux:  "cdd8ec1753e5e234b707356b5873a96d4be6c10ef713d2c7a80897ba3c0fb17f",
         x86_64_linux: "0c2a40b13193d92ea42a3281a63d6a722df1a27ed23faad83461b2256fe0edeb"

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
