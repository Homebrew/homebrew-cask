cask 'sqlpro-for-mysql' do
  version '1.0.28'
  sha256 '64b59b7a388d29f2ba6994636216bfb0eb5d37f2e08cd2b018c0c4d3ad39b5dc'

  # d3fwkemdw8spx3.cloudfront.net/mysql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip"
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com/'

  app 'SQLPro for MySQL.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.mysql',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl',
              ]
end
