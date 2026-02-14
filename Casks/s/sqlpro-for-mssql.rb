cask "sqlpro-for-mssql" do
  version "2026.07"
  sha256 "df8336f535bcdb2c710b6677e23d52a2798cfde3840aad2d327f2a2cfde64207"

  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/mssql/"
  name "SQLPro for MSSQL"
  desc "Microsoft SQL Server database client"
  homepage "https://www.macsqlclient.com/"

  livecheck do
    url "https://www.macsqlclient.com/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "SQLPro for MSSQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
  ]
end
