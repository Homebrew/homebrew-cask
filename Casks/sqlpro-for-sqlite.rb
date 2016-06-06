cask 'sqlpro-for-sqlite' do
  version '1.0.88'
  sha256 'b2b3e54ee9e6254f8b14b9054d21b717ea351c80c2aac80de1d6a95ee7b0f27b'

  # d3fwkemdw8spx3.cloudfront.net/sqlite was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com'
  license :commercial

  app 'SQLPro for SQLite.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqliteprofessional',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl',
              ]
end
