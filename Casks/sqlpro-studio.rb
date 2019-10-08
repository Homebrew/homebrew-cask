cask 'sqlpro-studio' do
  version '2019.09.27.3'
  sha256 '3d273c791b682a240a352a8bdbc7b6cc3d28feb38527c5c615a35d4e473338d2'

  # d3fwkemdw8spx3.cloudfront.net/studio was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.sqlprostudio.com/download.php'
  name 'SQLPro Studio'
  homepage 'https://www.sqlprostudio.com/'

  app 'SQLPro Studio.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlprostudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*',
             ]
end
