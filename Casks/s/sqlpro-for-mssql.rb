cask "sqlpro-for-mssql" do
  version "2026.171"
  sha256 "8d056775987fa2ddb01c683e6e410e08f8f841231b22fc8009dd4799e77c368d"

  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/mssql/"
  name "SQLPro for MSSQL"
  desc "Microsoft SQL Server database client"
  homepage "https://www.macsqlclient.com/"

  livecheck do
    url "https://www.macsqlclient.com/download.php"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "SQLPro for MSSQL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
  ]
end
