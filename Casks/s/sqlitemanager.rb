cask "sqlitemanager" do
  version "4.8.4"
  sha256 :no_check

  url "https://www.sqlabs.com/download/SQLiteManager.zip"
  name "SQLiteManager"
  desc "Database management system for sqlite databases"
  homepage "https://www.sqlabs.com/sqlitemanager.php"

  livecheck do
    url "https://www.sqlabs.com/sqlitemanager#summary"
    regex(/version\s+(\d+(?:\.\d+)*)/i)
  end

  app "SQLiteManager.app"

  zap trash: [
    "~/Library/Application Support/SQLiteManager",
    "~/Library/Preferences/com.sqlabs.sqlitemanager4.plist",
    "~/Library/Saved Application State/com.sqlabs.sqlitemanager4.savedState",
  ]
end
