cask 'sqlpro-for-mssql' do
  version '2019.09.04'
  sha256 'fd8f1c4cd39949b26f278310c837cfe450864db5977aaee27ecc31ba318b53bc'

  # d3fwkemdw8spx3.cloudfront.net/mssql was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.macsqlclient.com/download.php'
  name 'SQLPro for MSSQL'
  homepage 'https://www.macsqlclient.com/'

  app 'SQLPro for MSSQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.tinysqlstudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*',
             ]
end
