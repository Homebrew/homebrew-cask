cask "keeperdb" do
  version "3.0.1"
  sha256 "9d90b71db147854d821a291a7bc30456835b62ee8c2903e7492205b682e3a195"

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
