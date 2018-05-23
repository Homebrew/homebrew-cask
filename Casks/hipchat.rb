cask 'hipchat' do
  version '4.30.1-756'
  sha256 '5b52cfefb6fcca75f4b399bc8343a14515009c78cf06e97abe16f0d5ea19d816'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '92b892fd94b9fa90a49a5042b00f3a2beaf446d4f5b45ed5e0875d721cfae1be'
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
