cask 'hipchat' do
  version '4.29.0-732'
  sha256 'b033c8e69686810e7f83e0895a90ed22d745af5956b5bb1cf4cda37756dc910b'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: 'c6b93e028f81c7881cd4e5713b85d3fc5af219c36d3fbe309bd40fa439842382'
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
