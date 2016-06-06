cask 'sqlpro-for-mssql' do
  version :latest
  sha256 :no_check

  url 'http://macsqlclient.com/download.php'
  name 'SQLPro for MSSQL'
  homepage 'http://www.macsqlclient.com'
  license :commercial

  app 'SQLPro for MSSQL.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.tinysqlstudio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl',
              ]
end
