cask 'hipchat' do
  version '4.0.9-637'
  sha256 'c7e03739b7cb0ed198525b5f27dbadedc04cafdc2b63805fb1e5693225270402'

  # amazonaws.com/downloads.hipchat.com/osx was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.hipchat.com/osx/HipChat-#{version}.zip"
  appcast 'https://www.hipchat.com/release_notes/appcast/mac',
          checkpoint: '52983f8c4c4183a2f417ec273c2ce5f244e23882dc54c80fb19dadbbfd3838fd'
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
