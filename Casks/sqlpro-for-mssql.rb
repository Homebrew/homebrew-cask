cask 'sqlpro-for-mssql' do
  version '2020.43'
  sha256 '09f6bc8acc4af133c72bfe7017e543401b33c930589e6e1af07a32fd90661514'

  # d3fwkemdw8spx3.cloudfront.net/mssql/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/mssql/SQLProMSSQL.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.macsqlclient.com/download.php'
  name 'SQLPro for MSSQL'
  homepage 'https://www.macsqlclient.com/'

  app 'SQLPro for MSSQL.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.tinysqlstudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.tinysqlstudio.sfl*',
             ]
end
