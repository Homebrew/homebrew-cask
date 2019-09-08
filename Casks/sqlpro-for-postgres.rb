cask 'sqlpro-for-postgres' do
  version '2019.09.06'
  sha256 '4475355a6e03aab3a6f953056d7ead28b1a047977211ed6b839b7a3c2030bafe'

  # d3fwkemdw8spx3.cloudfront.net/postgres was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/postgres/SQLProPostgres.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.macpostgresclient.com/download.php'
  name 'SQLPro for Postgres'
  homepage 'https://www.macpostgresclient.com/SQLProPostgres'

  app 'SQLPro for Postgres.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlpropostgres',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl*',
             ]
end
