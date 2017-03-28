cask 'sqlpro-for-mssql' do
  version '1.0.145'
  sha256 'd3f324fa81283e058044c63477588206dda56c1bd8dec31ff8b9ffb56a1dbb3c'

  # d3fwkemdw8spx3.cloudfront.net/mssql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
  name 'SQLPro for MSSQL'
  homepage 'https://www.macsqlclient.com/'

  app 'SQLPro for MSSQL.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.tinysqlstudio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl',
              ]
end
