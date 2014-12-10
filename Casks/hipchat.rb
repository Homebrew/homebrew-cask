cask :v1 => 'hipchat' do
  version :latest
  sha256 :no_check

  url 'https://www.hipchat.com/downloads/latest/mac'
  appcast 'https://www.hipchat.com/release_notes/appcast/mac'
  homepage 'https://www.hipchat.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'HipChat.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  # todo expand/glob for '~/Library/<userid>/HipChat/',
                  '~/Library/Caches/com.hipchat.HipChat',
                  '~/Library/HipChat',
                  '~/Library/Logs/HipChat',
                  '~/Library/chat.hipchat.com',
                 ]
end
