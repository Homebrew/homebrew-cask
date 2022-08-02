cask "sqlpro-for-postgres" do
  version "2022.15"
  sha256 "27eda2f8f79db8b0399b6ca79b01e598a13f27cf531c06508a3dbfdd4ec92e1d"

  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/postgres/"
  name "SQLPro for Postgres"
  desc "Lightweight PostgreSQL database client"
  homepage "https://www.macpostgresclient.com/SQLProPostgres"

  livecheck do
    url "https://www.macpostgresclient.com/download.php"
    strategy :header_match
  end

  app "SQLPro for Postgres.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.sqlpropostgres",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*",
  ]
end
