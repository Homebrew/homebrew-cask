cask 'sqlpro-studio' do
  version '1.0.107'
  sha256 'e86b80a1cd7e1ee024e2f39fdcfb2cefcd12ae632172f9b9c43b4abf239f7c75'

  # d3fwkemdw8spx3.cloudfront.net/studio was verified as official when first introduced to the cask
  url "https://d3fwkemdw8spx3.cloudfront.net/studio/SQLProStudio.#{version}.app.zip"
  name 'SQLPro Studio'
  homepage 'https://www.sqlprostudio.com/'

  app 'SQLPro Studio.app'

  zap delete: [
                '~/Library/Containers/com.hankinsoft.osx.sqlprostudio',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hankinsoft.osx.sqlprostudio.sfl',
              ]
end
