cask 'sqlpro-for-postgres' do
  version '2020.47'
  sha256 'e5f5a87410f233a8036b7409393ca6d03d2c5803629f16493d4c10960266c3e4'

  # d3fwkemdw8spx3.cloudfront.net/postgres/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.macpostgresclient.com/download.php'
  name 'SQLPro for Postgres'
  homepage 'https://www.macpostgresclient.com/SQLProPostgres'

  app 'SQLPro for Postgres.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlpropostgres',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*',
             ]
end
