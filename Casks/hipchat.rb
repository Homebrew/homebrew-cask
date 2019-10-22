cask 'hipchat' do
  version '4.30.2-760'
  sha256 '0f7680eac626fafff0b7e5d7211901cb0d30494a73326eadad4bc9ae05fbf4af'

  # hipchat-server-stable.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://hipchat-server-stable.s3.amazonaws.com/clients/macos/HipChat-latest.dmg'
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

  caveats do
    discontinued
  end
end
