cask 'sqlpro-for-sqlite' do
  version '2020.61'
  sha256 '504caf1fdc4b72e483a046fad971b69f91ec51ba59bc4be4224b451224338614'

  # d3fwkemdw8spx3.cloudfront.net/sqlite/ was verified as official when first introduced to the cask
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
