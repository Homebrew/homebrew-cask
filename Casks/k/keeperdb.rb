cask "keeperdb" do
  version "3.1.0"
  sha256 "391a0bf8b286a573d634574f5197a66fdbce2da00aa5e256685a830115e0eb2c"

  url "https://keepersecurity.com/pam/keeperdb/v#{version}/KeeperDB_#{version}_universal.dmg"
  name "KeeperDB"
  desc "Database management tool for Postgres, MySQL, SQLite, MSSQL, Oracle, Redshift"
  homepage "https://www.keepersecurity.com/keeperdb/"

  livecheck do
    url "https://keepersecurity.com/pam/keeperdb/latest.txt"
    regex(/VERSION=(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "KeeperDB.app"

  uninstall quit: "com.keepersecurity.keeperdb"

  zap trash: [
    "~/Library/Application Support/KeeperDB",
    "~/Library/Caches/com.keepersecurity.keeperdb",
    "~/Library/Caches/keeperdb-desktop",
    "~/Library/HTTPStorages/com.keepersecurity.keeperdb",
    "~/Library/HTTPStorages/com.keepersecurity.keeperdb.binarycookies",
    "~/Library/Logs/KeeperDB",
    "~/Library/Preferences/com.keepersecurity.keeperdb.plist",
    "~/Library/WebKit/com.keepersecurity.keeperdb",
    "~/Library/WebKit/keeperdb-desktop",
  ]
end
