cask 'sqlpro-for-mssql' do
  version '1.0.135'
  sha256 '13ac27101abeba3b183d027cad97395ae2ab208227eb383ff7f311309daf453b'

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
