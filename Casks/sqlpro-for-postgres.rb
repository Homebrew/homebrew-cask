cask "sqlpro-for-postgres" do
  version "2020.68"
  sha256 "2de3980e886b0ca6b14a6a7418ecf73d83045331f9b38759ed0751e28e02f074"

  # d3fwkemdw8spx3.cloudfront.net/postgres/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.macpostgresclient.com/download.php"
  name "SQLPro for Postgres"
  desc "Lightweight PostgresSQL database client"
  homepage "https://www.macpostgresclient.com/SQLProPostgres"

  app "SQLPro for Postgres.app"

  zap trash: [
    "~/Library/Containers/com.hankinsoft.osx.sqlpropostgres",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*",
  ]
end
