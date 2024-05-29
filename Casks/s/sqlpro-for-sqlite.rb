cask "sqlpro-for-sqlite" do
  version "2024.30"
  sha256 "5e7ed1bc6d5cac38ca6d318bb4db347acec99e2983092f17337363113dc635ed"

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
