cask 'sqlpro-studio' do
  version :latest
  sha256 :no_check

  url 'http://www.sqlprostudio.com/download.php'
  name 'SQLPro Studio'
  homepage 'http://www.sqlprostudio.com'
  license :commercial

  app 'SQLPro Studio.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqlprostudio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl',
              ]
end
