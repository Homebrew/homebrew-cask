cask "sqlpro-for-mssql" do
  version "2020.72"
  sha256 "2978a5573af1975fae0bcf5727bca41499e2c156a32051df5d36a334d47b71f2"

  # d3fwkemdw8spx3.cloudfront.net/mssql/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.macsqlclient.com/download.php"
  name "SQLPro for MSSQL"
  desc "Microsoft SQL Server database client"
  homepage "https://www.macsqlclient.com/"

  app "SQLPro for MSSQL.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
  ]
end
