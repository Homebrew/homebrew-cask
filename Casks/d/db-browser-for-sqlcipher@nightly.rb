cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261123"
  sha256 arm:          "577d1997f1a30bcf7065ecf89d70f4d9947f45737f22a9458b5b82f3230e1d17",
         intel:        "577d1997f1a30bcf7065ecf89d70f4d9947f45737f22a9458b5b82f3230e1d17",
         arm64_linux:  "74e44bdd92b497eab39b77674b0cd087ec2c532985c9098e279dbe74b2e6622b",
         x86_64_linux: "fb66b7a3d971c59fdbda1e99a08a07d51700c7decd4652d80a4f6ee73d64f403"

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

    zap trash: "~/.config/sqlitebrowser"
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
