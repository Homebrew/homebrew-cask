cask 'sqlpro-for-sqlite' do
  version '1.0.108'
  sha256 'e8554683b3993f703b51a438d39d1439cb09e61e95f7fa2566b3304f841cde4a'

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
