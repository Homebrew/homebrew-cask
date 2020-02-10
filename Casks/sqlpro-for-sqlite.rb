cask 'sqlpro-for-sqlite' do
  version '2020.01'
  sha256 'feea1828f7032664e529dc4b3756e1afdee8b2cac371e8590ed2af11eecbce97'

  # d3fwkemdw8spx3.cloudfront.net/sqlite was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/sqlite/SQLProSQLite.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sqlitepro.com/download.php'
  name 'SQLPro for SQLite'
  homepage 'https://www.sqlitepro.com/'

  app 'SQLPro for SQLite.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqliteprofessional',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqliteprofessional.sfl*',
             ]
end
