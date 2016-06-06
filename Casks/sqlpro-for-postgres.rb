cask 'sqlpro-for-postgres' do
  version :latest
  sha256 :no_check

  url 'http://www.macpostgresclient.com/download.php'
  name 'SQLPro for Postgres'
  homepage 'http://www.macpostgresclient.com/SQLProPostgres'
  license :commercial

  app 'SQLPro for Postgres.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqlpropostgres',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlpropostgres.sfl',
              ]
end
