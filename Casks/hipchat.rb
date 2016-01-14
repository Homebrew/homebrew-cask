cask 'hipchat' do
  version '3.3.7-205'
  sha256 '42d4e6ffd509bded1160d99ce3826372ead536cc322df3149ca5c69dd460a432'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          :checkpoint => '408c96ce7e84618568a736ca79a4c3fd236b9a2eade802091d28d6f72b02b78b'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'
  license :freemium

  app 'HipChat.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
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
