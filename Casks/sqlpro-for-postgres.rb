cask 'sqlpro-for-postgres' do
  version '2019.45'
  sha256 'b4256b90c130b8db198985f716fca51a153c9653dbe8a3d8b25d100542f8c2b4'

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
