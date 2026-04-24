cask "sqlpro-for-mysql" do
  version "2026.85"
  sha256 "3bd130051b818f5ed75ca3cd064a0172fac230462873328bcf507a3bfa5f8806"

  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/mysql/"
  name "SQLPro for MySQL"
  desc "MySQL & MariaDB database client"
  homepage "https://www.mysqlui.com/"

  livecheck do
    url "https://www.mysqlui.com/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :sonoma"

  app "SQLPro for MySQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.mysql",
  ]
end
