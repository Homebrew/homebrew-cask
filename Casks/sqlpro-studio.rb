cask 'sqlpro-studio' do
  version '1.0.122'
  sha256 '108f9eff7a5842fd336bc117344ca0c3d3d73cc3900cd5c3e5169d1c3c9618ad'

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
