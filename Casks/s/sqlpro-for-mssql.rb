cask "sqlpro-for-mssql" do
  version "2024.21"
  sha256 "cfaf4c6ad193213a7cdd68669b3caafc90fd3357d77cb91b45b0f02549896b3e"

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
