cask 'sqlpro-for-mysql' do
  version :latest
  sha256 :no_check

  url 'http://www.mysqlui.com/download.php'
  name 'SQLPro for MySQL'
  homepage 'http://www.mysqlui.com'
  license :commercial

  app 'SQLPro for MySQL.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.mysql',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.mysql.sfl',
              ]
end
