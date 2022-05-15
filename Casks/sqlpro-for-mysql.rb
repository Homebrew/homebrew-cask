cask "sqlpro-for-mysql" do
  version "2022.15"
  sha256 "05a738a786e8a6119331de4dec8fa1fda98ea47bb4a9702950a15453a3ca26dd"

  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/mysql/"
  name "SQLPro for MySQL"
  desc "MySQL & MariaDB database client"
  homepage "https://www.mysqlui.com/"

  livecheck do
    url "https://www.mysqlui.com/download.php"
    strategy :header_match
  end

  app "SQLPro for MySQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.mysql",
  ]
end
