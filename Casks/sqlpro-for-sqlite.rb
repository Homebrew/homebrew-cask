cask 'sqlpro-for-sqlite' do
  version '1.0.310'
  sha256 '8ccfd8eb6660ee443a4490c7437cd75608f811c129c36b45a1a8fa05c1892828'

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
