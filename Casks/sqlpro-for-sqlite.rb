cask 'sqlpro-for-sqlite' do
  version :latest
  sha256 :no_check

  url 'https://www.sqlitepro.com/download.php'
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com'
  license :commercial

  app 'SQLPro for SQLite.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqliteprofessional',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl',
              ]
end
