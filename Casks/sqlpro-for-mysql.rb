cask "sqlpro-for-mysql" do
  version "2021.53"
  sha256 "53b718c7a4b6ee6271030cdb1959bdd9e2917371e5348bcf0d567d26614b6a72"

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
