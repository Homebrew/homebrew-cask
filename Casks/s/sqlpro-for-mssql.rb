cask "sqlpro-for-mssql" do
  version "2026.301"
  sha256 "74a8c36db83faf67c804e108cad86d630d0cc4b1519f6115745c7c672a219bba"

  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
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
    "~/Library/Application Scripts/com.hankinsoft.osx.tinysqlstudio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.tinysqlstudio",
  ]
end
