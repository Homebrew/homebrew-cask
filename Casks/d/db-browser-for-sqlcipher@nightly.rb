cask "db-browser-for-sqlcipher@nightly" do
  version :latest
  sha256 :no_check

  url "https://nightlies.sqlitebrowser.org/latest/DB.Browser.for.SQLCipher-universal.dmg"
  name "DB Browser for SQLCipher Nightly"
  desc "Database browser for SQLCipher"
  homepage "https://sqlitebrowser.org/"

  app "DB Browser for SQLCipher Nightly.app"

  zap trash: [
    "~/Library/Preferences/com.sqlitebrowser.sqlitebrowser.plist",
    "~/Library/Saved Application State/net.sourceforge.sqlitebrowser.savedState",
  ]
end
