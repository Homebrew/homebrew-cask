cask 'hipchat' do
  version '4.30.1-749'
  sha256 'd690e6b4dd000dee0e849c73b202944b9bb2bcbe998b047b0ce113c1a4eec5ee'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '106da2f4326989a86526e767404a2c41d19c4c8ca4064e81636c967dba788e1a'
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
