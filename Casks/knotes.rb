cask 'knotes' do
  version '1.7.0'
  sha256 '809b39fedc8a0b095d2823d0f5efcacb94354892c06da03cc4c6e2fc4341dedd'

  # knotes-release-cn.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://knotes-release-cn.s3.amazonaws.com/mac/Knotes-#{version}-mac.zip"
  appcast 'https://knotesapp.com/'
  name 'Knotes'
  homepage 'https://knotesapp.com/'

  app 'Knotes.app'

  zap trash: [
               '~/Library/Application Support/knotes',
               '~/Library/Logs/knotes',
               '~/Library/Preferences/com.knotesapp.knotes.helper.plist',
               '~/Library/Preferences/com.knotesapp.knotes.plist',
               '~/Library/Saved Application State/com.knotesapp.knotes.savedState',
             ]
end
