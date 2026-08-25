cask "sqlpro-for-postgres" do
  version "2026.237"
  sha256 "8f0508864efec61e005003e87b2ba78bb07ffac16e66a35b1efb94178c502b69"

  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/postgres/"
  name "SQLPro for Postgres"
  desc "Lightweight PostgreSQL database client"
  homepage "https://www.macpostgresclient.com/SQLProPostgres"

  livecheck do
    url "https://www.macpostgresclient.com/download.php"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "SQLPro for Postgres.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqlpropostgres",
  ]
end
