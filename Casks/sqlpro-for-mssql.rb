cask 'sqlpro-for-mssql' do
  version '2019.06.25'
  sha256 '141531e35221f903fc4e14a6e3893e36901654a5300af084d97018d7ae6225d2'

  # d3fwkemdw8spx3.cloudfront.net/mssql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
  name 'SQLPro for MSSQL'
  homepage 'https://www.macsqlclient.com/'

  app 'SQLPro for MSSQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.tinysqlstudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*',
             ]
end
