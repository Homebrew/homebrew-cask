cask 'sqlpro-for-postgres' do
  version '2020.14'
  sha256 '6f10aebbef223021e59d2feb65b60000e644d8c9838948855fa4791649799ad8'

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
