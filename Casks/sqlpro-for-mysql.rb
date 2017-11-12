cask 'sqlpro-for-mysql' do
  version '1.0.54'
  sha256 '48a606318fca5d3a3e8e3da2a6648c1e409bd1505ed47b30ad852ac0a87b04f4'

  # d3fwkemdw8spx3.cloudfront.net/mysql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip"
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com/'

  app 'SQLPro for MySQL.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.mysql',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*',
              ]
end
