cask "sqlpro-for-sqlite" do
  version "2026.301.2"
  sha256 "dc48cc81a022f2aaf5f777382eed77b7a1191195d31673657f1642d4ae224e0b"

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
