cask :v1 => 'hipchat' do
  version '3.3.2-198'
  sha256 '09cbb3ad117e266afd3439c17a34b567c286af476db65e151d76003f21bfe036'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac'
  name 'HipChat'
  homepage 'https://www.hipchat.com/'
  license :freemium

  app 'HipChat.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  # todo expand/glob for '~/Library/<userid>/HipChat/'
                  '~/Library/Application Support/HipChat',
                  '~/Library/Caches/com.hipchat.HipChat',
                  '~/Library/HipChat',
                  '~/Library/Logs/HipChat',
                  '~/Library/Preferences/com.hipchat.HipChat.plist',
                  '~/Library/Saved Application State/com.hipchat.HipChat.savedState',
                  '~/Library/chat.hipchat.com',
                 ]
end
