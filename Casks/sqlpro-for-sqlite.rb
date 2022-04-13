cask "sqlpro-for-sqlite" do
  version "2022.1"
  sha256 "376e86eb7df6fe7c636ebf4864acdfa0029b9757f8548577394ab1263c6417a7"

  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip",
      verified: "d3fwkemdw8spx3.cloudfront.net/sqlite/"
  name "SQLPro for SQLite"
  desc "Advanced sqlite editor"
  homepage "https://www.sqlitepro.com/"

  livecheck do
    url "https://www.sqlitepro.com/download.php"
    strategy :header_match
  end

  app "SQLPro for SQLite.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqliteprofessional",
  ]
end
