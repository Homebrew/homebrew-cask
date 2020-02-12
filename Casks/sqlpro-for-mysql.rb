cask 'sqlpro-for-mysql' do
  version '2020.08'
  sha256 '3ba64e00d07c137a53eb35db6f95e02278130bef7415ca79d3586e31ba2b5c0b'

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
