cask "sqlpro-for-postgres" do
  version "2026.238"
  sha256 "e5be77915d27dee0d6ac7d5fcc33f9143daf1a06d6cf8656ffe5b3e722dcc053"

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
