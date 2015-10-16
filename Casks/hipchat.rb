cask :v1 => 'hipchat' do
  version '3.3.6-202'
  sha256 '1d98ba1f6b6f67f62c38bd200e8c5a29d2ee47fcf3c6fa574c741771eb1a8d83'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/uploads.hipchat.com/10804/1699248/dZxE36RSiZCYmKe/HipChat.zip'
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          :sha256 => 'f4a0980dea0e8ebb79155bc70134cec830076ca24d221041f130a9505e4a9357'
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
