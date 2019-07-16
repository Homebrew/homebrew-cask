cask 'sqlpro-studio' do
  version '2019.06.25'
  sha256 'a472f44cba44a7465560be968add07cd7920210b4927f6a6077ecaf85f88ac1b'

  # d3fwkemdw8spx3.cloudfront.net/studio was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip"
  name 'SQLPro Studio'
  homepage 'https://www.sqlprostudio.com/'

  app 'SQLPro Studio.app'

  zap trash: [
               '~/Library/Containers/com.hankinsoft.osx.sqlprostudio',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl*',
             ]
end
