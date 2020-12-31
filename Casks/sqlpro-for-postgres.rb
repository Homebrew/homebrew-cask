cask "sqlpro-for-postgres" do
  version "2020.96"
  sha256 "0ca0244aef9fc2ddf93da48724d6135bb556cebc5a18dd5b12a32c8a0a983406"

  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/postgres/"
  name "SQLPro for Postgres"
  desc "Lightweight PostgresSQL database client"
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
