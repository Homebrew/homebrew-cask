cask 'sqlpro-for-mysql' do
  version '2020.05'
  sha256 '80f416b53e1bc7af821d37b188d47b80af27e2b522c274ade47891d97ec1f867'

  # d3fwkemdw8spx3.cloudfront.net/mysql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mysqlui.com/download.php'
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com/'

  app 'SQLPro for MySQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.mysql',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*',
             ]
end
