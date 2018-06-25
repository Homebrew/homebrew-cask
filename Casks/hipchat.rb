cask 'hipchat' do
  version '4.30.1-759'
  sha256 '058da1b14ec884e43fac8cbebbafddcbefc38384918c5f7bec2bed8ca36de8cb'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'

  auto_updates true

  app 'HipChat.app'

  zap trash: [
               '~/Library/Application Support/HipChat',
               '~/Library/Caches/com.hipchat.HipChat',
               '~/Library/HipChat',
               '~/Library/Logs/HipChat',
               '~/Library/Preferences/com.hipchat.HipChat.plist',
               '~/Library/Saved Application State/com.hipchat.HipChat.savedState',
               '~/Library/chat.hipchat.com',
             ]
end
