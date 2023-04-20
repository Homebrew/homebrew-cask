cask "sqlpro-for-mysql" do
  version "2023.10"
  sha256 "4e8b51f7bf47c5f432e25904d556c69d1e6627188cfa01f194da32908b306f5a"

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
