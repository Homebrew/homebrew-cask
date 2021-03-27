cask "sqlitemanager" do
  version "4.8.4"
  sha256 :no_check

  url "https://www.sqlabs.com/download/SQLiteManager.zip"
  appcast "https://www.sqlabs.com/sqlitemanager#summary"
  name "SQLiteManager"
  desc "Database management system for sqlite databases"
  homepage "https://www.sqlabs.com/sqlitemanager.php"

  app "SQLiteManager.app"
end
