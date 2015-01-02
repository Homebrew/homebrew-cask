cask :v1 => 'hipchat' do
  version :latest
  sha256 :no_check

  url 'https://www.hipchat.com/downloads/latest/mac'
  appcast 'https://www.hipchat.com/release_notes/appcast/mac'
  homepage 'https://www.hipchat.com/'
  license :commercial

  app 'HipChat.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/HipChat',
                  '~/Library/Caches/com.hipchat.HipChat',
                  '~/Library/HipChat',
                  '~/Library/Logs/HipChat',
                  '~/Library/Preferences/com.hipchat.HipChat.plist',
                  '~/Library/Saved Application State/com.hipchat.HipChat.savedState',
                  '~/Library/chat.hipchat.com',
                 ]
end
