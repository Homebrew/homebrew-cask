cask 'knotes' do
  version '1.6.0'
  sha256 '8884b6a67f1c43b7880ff5da957f2c0684f3afb12a6f1fc24b960d72e2f9bae9'

  # s3.ap-northeast-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/knotes-release-cn/mac/Knotes-#{version}-mac.zip"
  appcast 'http://knotesapp.com/'
  name 'Knotes'
  homepage 'http://knotesapp.com/'

  app 'Knotes.app'

  zap trash: [
               '~/Library/Application Support/knotes',
               '~/Library/Logs/knotes',
               '~/Library/Preferences/com.knotesapp.knotes.helper.plist',
               '~/Library/Preferences/com.knotesapp.knotes.plist',
               '~/Library/Saved Application State/com.knotesapp.knotes.savedState',
             ]
end
