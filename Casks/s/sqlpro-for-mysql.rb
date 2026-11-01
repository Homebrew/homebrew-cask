cask "sqlpro-for-mysql" do
  version "2026.301"
  sha256 "5726937aaa586df3171ea7e4aa433f59cfcb854fb0c9070055cfd8f6bd587cd9"

  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip"
  name "SQLPro for MySQL"
  desc "MySQL & MariaDB database client"
  homepage "https://www.mysqlui.com/"

  livecheck do
    url "https://www.mysqlui.com/download.php"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "SQLPro for MySQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.mysql",
  ]
end
