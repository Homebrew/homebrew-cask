cask "db-browser-for-sqlcipher@nightly" do
  arch arm: "aarch64", intel: "x86.64"
  os macos: "universal_"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "20261111"
  sha256 arm:          "fcd732b52a61d3ace1f0f2d09e4408b3f5f043b8a55a36210d8a36bfc533bbeb",
         intel:        "fcd732b52a61d3ace1f0f2d09e4408b3f5f043b8a55a36210d8a36bfc533bbeb",
         arm64_linux:  "e62e5c44bb16ada627616c39c48a78ec9268e33591106dff7134fb8b7f6ea37d",
         x86_64_linux: "3cd9f3d9dd604f6491b6a91bc4d48646573b01544941e0da346edff9b11a89d0"

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
