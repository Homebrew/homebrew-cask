cask "sqlpro-for-postgres" do
  version "2026.85"
  sha256 "7cd14555d193cd751fb03bbd4409cba7a3c09bcb5d0b4aea45d56f9894889554"

  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/postgres/"
  name "SQLPro for Postgres"
  desc "Lightweight PostgreSQL database client"
  homepage "https://www.macpostgresclient.com/SQLProPostgres"

  livecheck do
    url "https://www.macpostgresclient.com/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :sonoma"

  app "SQLPro for Postgres.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqlpropostgres",
  ]
end
