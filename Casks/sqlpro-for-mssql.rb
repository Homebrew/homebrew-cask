cask 'sqlpro-for-mssql' do
  version '1.0.170'
  sha256 '86cf329e449c4eca07b9e109a4063a4ec9e8c6a72d632278fa79c8787031d168'

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
