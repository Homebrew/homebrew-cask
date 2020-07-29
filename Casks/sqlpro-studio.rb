cask 'sqlpro-studio' do
  version '2020.59'
  sha256 'ad23375d1f4227503fe45d0c1d112b7673c43de0c796f2c9a6fbc014dbbda10b'

  # d3fwkemdw8spx3.cloudfront.net/studio/ was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?user_agent=Macintosh&url=https://www.sqlprostudio.com/download.php'
  name 'SQLPro Studio'
  homepage 'https://www.sqlprostudio.com/'

  app 'SQLPro Studio.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlprostudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*',
             ]
end
