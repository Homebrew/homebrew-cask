cask 'sqlpro-for-mssql' do
  version '2019.08.29'
  sha256 'eee20b1b6b3bc065cf6e73944f9b4f015393bf5aad47c0fdd306192f121fefe4'

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
