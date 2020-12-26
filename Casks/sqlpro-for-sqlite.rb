cask "sqlpro-for-sqlite" do
  version "2020.104"
  sha256 "8b6cd01e570477833a006f02b8aae42b4ec37975c2ea2151d8e5d0fd0d54caf3"

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
    "~/Library/Containers/com.hankinsoft.osx.sqliteprofessional",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl*",
  ]
end
