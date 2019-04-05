cask 'sqlpro-for-mssql' do
  version '1.0.318'
  sha256 '7c98cdacc92dc51e0810848485ed64e65be2a95b1c2a4c89a735cd7ddb183ff7'

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
