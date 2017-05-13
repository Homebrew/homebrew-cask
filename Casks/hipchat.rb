cask 'hipchat' do
  version '4.29.0-732'
  sha256 'b033c8e69686810e7f83e0895a90ed22d745af5956b5bb1cf4cda37756dc910b'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '9fe787ff9eadcbf05f4614102d10fd573552872764d2094462de43739ba97279'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'

  auto_updates true

  app 'HipChat.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/HipChat',
                '~/Library/Caches/com.hipchat.HipChat',
                '~/Library/HipChat',
                '~/Library/Logs/HipChat',
                '~/Library/Preferences/com.hipchat.HipChat.plist',
                '~/Library/Saved Application State/com.hipchat.HipChat.savedState',
                '~/Library/chat.hipchat.com',
              ]
end
