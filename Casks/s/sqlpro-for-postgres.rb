cask "sqlpro-for-postgres" do
  version "2023.10"
  sha256 "4c13d8d77cea1032258463e36dbe85922adff07a7e3948d354ea0f8a28efbd10"

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
