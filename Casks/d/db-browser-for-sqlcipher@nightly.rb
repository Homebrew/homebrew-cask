cask "db-browser-for-sqlcipher@nightly" do
  version "20260104"
  sha256 "fbb33dbe18ee4772cc27e1a6f99f13de8e5e210d0d64c761517f7d3d38c1af5b"

  url "https://github.com/sqlitebrowser/sqlitebrowser/releases/download/nightly/DB.Browser.for.SQLCipher-universal_#{version}.dmg",
      verified: "github.com/sqlitebrowser/sqlitebrowser/"
  name "DB Browser for SQLCipher Nightly"
  desc "Database browser for SQLCipher"
  homepage "https://sqlitebrowser.org/"

  livecheck do
    cask "db-browser-for-sqlite@nightly"
    regex(/^DB[._-]Browser[._-]for[._-]SQLCipher[._-]universal[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "DB Browser for SQLCipher Nightly.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Preferences/net.sourceforge.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
