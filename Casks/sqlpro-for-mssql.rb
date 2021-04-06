cask "sqlpro-for-mssql" do
  version "2020.104"
  sha256 "a97ac3132557cf1cffdb8396159239fb16e3d24c5ac45da986b8964d9ff53e09"

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
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
  ]
end
