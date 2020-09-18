cask "sqlpro-for-sqlite" do
  version "2020.80"
  sha256 "252470d4f128966f4c4675f1e4c41f68ef30ece751dc1f97d7eb7bddb29d487e"

  # d3fwkemdw8spx3.cloudfront.net/sqlite/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sqlitepro.com/download.php"
  name "SQLPro for SQLite"
  desc "Advanced sqlite editor"
  homepage "https://www.sqlitepro.com/"

  app "SQLPro for SQLite.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.sqliteprofessional",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl*",
  ]
end
