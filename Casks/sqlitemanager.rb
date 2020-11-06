cask "sqlitemanager" do
  version "4.8.4"
  sha256 "83725f041913ae9a09301ec2eb1c6e8d07b47596b1412297f0372346ebbeba02"

  url "https://www.sqlabs.com/download/SQLiteManager.zip"
  appcast "https://www.sqlabs.com/sqlitemanager#summary"
  name "SQLiteManager"
  desc "Database management system for sqlite databases"
  homepage "https://www.sqlabs.com/sqlitemanager.php"

  app "SQLiteManager.app"
end
