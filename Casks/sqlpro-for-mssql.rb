cask "sqlpro-for-mssql" do
  version "2023.10"
  sha256 "23a95acd225049919fb24d1aa9ec0e012ef181ff3885d0b232f84d209a0c215b"

  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/mssql/"
  name "SQLPro for MSSQL"
  desc "Microsoft SQL Server database client"
  homepage "https://www.macsqlclient.com/"

  livecheck do
    url "https://www.macsqlclient.com/download.php"
    strategy :header_match
  end

  app "SQLPro for MSSQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
  ]
end
