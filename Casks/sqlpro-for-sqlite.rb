cask 'sqlpro-for-sqlite' do
  version '1.0.455'
  sha256 '1d6f768f840781ee15775997fd4bd8ee51555f35f41db6335ff1099644bd3ef2'

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
