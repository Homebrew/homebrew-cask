cask "sqlpro-for-mysql" do
  version "2026.07"
  sha256 "d4154f08fd1b20936f1c67df3c06a2b21deff977f2e6ff2dd9d1e5bc872f5cf9"

  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/mysql/"
  name "SQLPro for MySQL"
  desc "MySQL & MariaDB database client"
  homepage "https://www.mysqlui.com/"

  livecheck do
    url "https://www.mysqlui.com/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "SQLPro for MySQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.mysql",
  ]
end
