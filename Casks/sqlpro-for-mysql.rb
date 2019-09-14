cask 'sqlpro-for-mysql' do
  version '2019.09.12'
  sha256 '8d25777bd146561b37657b7f54890ed1b73595485f7d4753d13c11a34e14242a'

  # d3fwkemdw8spx3.cloudfront.net/mysql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.mysqlui.com/download.php'
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com/'

  app 'SQLPro for MySQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.mysql',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*',
             ]
end
