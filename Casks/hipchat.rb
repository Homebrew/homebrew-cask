cask 'hipchat' do
  version '4.0.6-589'
  sha256 '5c8b6dc63a9b2acc51fe4982a39f96eb0a1142eb588534550f238b2e23fef443'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '28e55daea9a12e39ae30c97779c351b59c54a46b53e70a5490938d9f2d5a9af5'
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
