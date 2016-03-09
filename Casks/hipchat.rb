cask 'hipchat' do
  version '4.0.4-539'
  sha256 '6a781bfb7ebb89dbf4aa299e6d291f1f4de0a8b604521c316cd4e41a0fdbff75'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '425d77527f50f4c489ab41cb67cfb9f0b2c0d2808df011e19f7926a19c0b0b01'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'
  license :freemium

  auto_updates true

  app 'HipChat.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                # TODO: expand/glob for '~/Library/<userid>/HipChat/'
                '~/Library/Application Support/HipChat',
                '~/Library/Caches/com.hipchat.HipChat',
                '~/Library/HipChat',
                '~/Library/Logs/HipChat',
                '~/Library/Preferences/com.hipchat.HipChat.plist',
                '~/Library/Saved Application State/com.hipchat.HipChat.savedState',
                '~/Library/chat.hipchat.com',
              ]
end
