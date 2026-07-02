cask "keeperdb" do
  version "2.2.0"
  sha256 "17ccc6ce7b6cf4fe527fe5c5ca35d24cc476976002f828f3c75f6308ad39a960"

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

  zap trash: [
    "~/Library/Application Support/com.keepersecurity.keeperdb",
    "~/Library/Caches/com.keepersecurity.keeperdb",
    "~/Library/Preferences/com.keepersecurity.keeperdb.plist",
    "~/Library/Saved Application State/com.keepersecurity.keeperdb.savedState",
  ]
end
