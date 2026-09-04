cask "sqlpro-for-sqlite" do
  version "2026.247"
  sha256 "f23651b10654d4cb5f053df877f372ffed509cbfffb1f515c32a6579edfabfd7"

  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  name "SQLPro for SQLite"
  desc "Advanced sqlite editor"
  homepage "https://www.sqlitepro.com/"

  livecheck do
    url "https://www.sqlitepro.com/download.php"
    strategy :header_match
  end

  depends_on macos: :sonoma

  app "SQLPro for SQLite.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl*",
    "~/Library/Containers/com.hankinsoft.osx.sqliteprofessional",
  ]
end
