cask 'sqlpro-for-mysql' do
  version '1.0.33'
  sha256 'd00c4cfbebd94b8847d69e1ad8e2f5d3ea23a2fd16e3c338ab989f99f4e049b7'

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
