cask 'bearychat' do
  version '20170330'
  sha256 'c5f3d8be8c85285bf297a46ba0a479833373b39e2fa644e0689047d0816347a3'

  url 'https://static.bearychat.com/v2/BearyChat.dmg'
  name 'BearyChat'
  homepage 'https://bearychat.com/'

  app 'BearyChat.app'

  zap trash: [
               '~/Preferences/com.node-webkit-builder.bearychat.plist',
               '~/Library/Application Support/BearyChat',
               '~/Library/Application Support/BearyChat_V2',
             ]
end
