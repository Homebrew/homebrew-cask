cask 'sqlpro-studio' do
  version '1.0.98'
  sha256 'f24e0e4267ca8ac1b550308d84aeb0178ba08ae9e50a079503bc8500af0a1494'

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
