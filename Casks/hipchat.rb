cask 'hipchat' do
  version '4.28.1-718'
  sha256 '76076cb6830adfa975c63970e2bf4ab09ddfa6bec07b3d98c248475aa84a794e'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '0a30d4f2b2b591a82c4b41af33206cf825a458a237a4a4ec555fedcd01eb396e'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'

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
