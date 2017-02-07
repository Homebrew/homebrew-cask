cask 'sqlpro-for-sqlite' do
  version '1.0.109'
  sha256 '89fc595acc0b8d2186b6d2b960cfb86bd7e9b1c4a19c8a381058baba26638327'

  # d3fwkemdw8spx3.cloudfront.net/sqlite was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com/'

  app 'SQLPro for SQLite.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqliteprofessional',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl',
              ]
end
