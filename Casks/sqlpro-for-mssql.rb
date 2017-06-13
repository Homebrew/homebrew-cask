cask 'sqlpro-for-mssql' do
  version '1.0.158'
  sha256 '07c7c0c6808d3053662e5aa8c7d432c4f32386c9aca1b073c9f935a89f188cbe'

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
