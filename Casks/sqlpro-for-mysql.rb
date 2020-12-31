cask "sqlpro-for-mysql" do
  version "2020.101"
  sha256 "77edce8c00fa9953486c2f518eeabb083b738e08d4c376878a3ff149c9bccc23"

  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.zip",
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
    "~/Library/Containers/com.hankinsoft.osx.mysql",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*",
  ]
end
