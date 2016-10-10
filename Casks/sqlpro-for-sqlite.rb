cask 'sqlpro-for-sqlite' do
  version '1.0.101'
  sha256 '2f69c480ad534c3fc1841c87eb53023767c8e3c58404ec2b9a4042de4bcdc45b'

  # d3fwkemdw8spx3.cloudfront.net/sqlite was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com'

  app 'SQLPro for SQLite.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqliteprofessional',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl',
              ]
end
