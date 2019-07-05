cask 'sqlpro-for-mysql' do
  version '2019.06.28'
  sha256 'f094ae34f89738afc6487d3fa83575caeb0b3763594d61dc78b80f8aaae791d7'

  # d3fwkemdw8spx3.cloudfront.net/mysql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mysql/SQLProMySQL.#{version}.app.zip"
  name 'SQLPro for MySQL'
  homepage 'https://www.mysqlui.com/'

  app 'SQLPro for MySQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.mysql',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl*',
             ]
end
