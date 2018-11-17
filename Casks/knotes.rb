cask 'knotes' do
  version '1.5.0'
  sha256 '7df8d0187fe88861db11ad4c5ccc6c0f644a47e0bd5b3fa4b9deb5e55731c7cb'

  # s3.ap-northeast-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/knotes-release-cn/mac/Knotes-#{version}-mac.zip"
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
