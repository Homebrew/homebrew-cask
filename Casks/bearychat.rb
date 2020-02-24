cask 'bearychat' do
  version :latest
  sha256 :no_check

  url 'https://static.bearychat.com/v2/BearyChat.dmg'
  name 'BearyChat'
  name '倍洽'
  homepage 'https://bearychat.com/'

  app '倍洽.app'

  zap trash: [
               '~/Preferences/com.node-webkit-builder.bearychat.plist',
               '~/Library/Application Support/BearyChat',
               '~/Library/Application Support/BearyChat_V2',
             ]
end
