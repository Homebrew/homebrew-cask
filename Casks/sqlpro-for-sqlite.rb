cask "sqlpro-for-sqlite" do
  version "2022.12"
  sha256 "25dac62e3f58f58997538d4d960108b3857968ad4eb8841e09c838268edcfff2"

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
