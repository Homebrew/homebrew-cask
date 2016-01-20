cask 'hipchat' do
  version '4.0-349'
  sha256 '8244696fc29b98e4249daef20fec8b890ecbe7eb20a770a3fb48ca35a4b65e7c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '425d77527f50f4c489ab41cb67cfb9f0b2c0d2808df011e19f7926a19c0b0b01'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'
  license :freemium

  app 'HipChat.app'

  auto_updates true  

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
