cask 'sqlpro-for-mysql' do
  version '1.0.20'
  sha256 '078d78fad1d998b808f927715939bf343a13c4088c9c2ec6244ae33b62522186'

  # d3fwkemdw8spx3.cloudfront.net/mysql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip"
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com'

  app 'SQLPro for MySQL.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.mysql',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl',
              ]
end
