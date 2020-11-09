cask "sqlpro-for-mysql" do
  version "2020.82"
  sha256 "992d03ad2bb005a004266f7529110379847c2b0f37c889e41789890da537fabb"

  # d3fwkemdw8spx3.cloudfront.net/mysql/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.mysqlui.com/download.php"
  name "SQLPro for MySQL"
  desc "MySQL & MariaDB database client"
  homepage "https://www.mysqlui.com/"

  app "SQLPro for MySQL.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.mysql",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*",
  ]
end
