cask 'sqlpro-for-mysql' do
  version '2020.47'
  sha256 '8ef5bc5d8bcfd0ebc9433cff9a511286123a8f5f8074fdc5a1062ca30463621f'

  # d3fwkemdw8spx3.cloudfront.net/mysql/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.mysqlui.com/download.php'
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com/'

  app 'SQLPro for MySQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.mysql',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*',
             ]
end
