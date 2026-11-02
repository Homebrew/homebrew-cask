cask "sqlpro-for-postgres" do
  version "2026.301"
  sha256 "151bbd90fc9c2d3a2ce95cf0716d85ef564fd27061dc61473a805ea83ce93f41"

  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip"
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
    "~/Library/Application Scripts/com.hankinsoft.osx.SQLProPostgres",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqlpropostgres",
  ]
end
