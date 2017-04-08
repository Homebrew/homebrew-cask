cask 'sqlpro-studio' do
  version '1.0.118'
  sha256 '389877f6512624dfda6e09009897233b456deba3e35a460ec72e260924988a90'

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
