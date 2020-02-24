cask 'hipchat' do
  version '4.30.2-760'
  sha256 'c88d91687535a445b92f58ded7993feda3bdf3f68ffd51420eb0cfda5fb5200f'

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
