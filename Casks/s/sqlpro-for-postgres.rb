cask "sqlpro-for-postgres" do
  version "2026.07"
  sha256 "5393dbbfd38e75b48bdaec4720b9362fbc46dbf33ee8324b2e590ee03682ca79"

  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/postgres/"
  name "SQLPro for Postgres"
  desc "Lightweight PostgreSQL database client"
  homepage "https://www.macpostgresclient.com/SQLProPostgres"

  livecheck do
    url "https://www.macpostgresclient.com/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "SQLPro for Postgres.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqlpropostgres",
  ]
end
