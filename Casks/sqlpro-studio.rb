cask 'sqlpro-studio' do
  version '2020.48'
  sha256 '52cf86ec670e6735097ebc999bad41c264d0a3bde6eceeb7b0d73a5314615de0'

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
