cask "keeperdb" do
  version "2.4.0"
  sha256 "788a2896761dfeffb7a9d624aa800493761422e5737c2061f1cb92e8c0d9ea88"

  url "https://keepersecurity.com/pam/keeperdb/v#{version}/KeeperDB_#{version}_universal.dmg"
  name "KeeperDB"
  desc "Database management tool for Postgres, MySQL, SQLite, MSSQL, Oracle, Redshift"
  homepage "https://www.keepersecurity.com/keeperdb/"

  livecheck do
    url "https://keepersecurity.com/pam/keeperdb/latest.txt"
    regex(/VERSION=(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :catalina

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
