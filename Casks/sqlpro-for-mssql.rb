cask "sqlpro-for-mssql" do
  version "2020.68"
  sha256 "9722847b0e4a42c4f441e171f8ac802e6502cead3b9327505d3af14529885196"

  # d3fwkemdw8spx3.cloudfront.net/mssql/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.macsqlclient.com/download.php"
  name "SQLPro for MSSQL"
  homepage "https://www.macsqlclient.com/"

  app "SQLPro for MSSQL.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
  ]
end
