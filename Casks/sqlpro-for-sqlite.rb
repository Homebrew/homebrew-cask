cask 'sqlpro-for-sqlite' do
  version '1.0.302'
  sha256 '119f92e966ca48d8bfc42f367bd2247ea40629012a167d96e03b549ba7712be3'

  # d3fwkemdw8spx3.cloudfront.net/sqlite was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com/'

  app 'SQLPro for SQLite.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqliteprofessional',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl*',
             ]
end
