cask 'bearychat' do
  version :latest
  sha256 :no_check

  url 'https://bearychat.com/apps/mac'
  name 'BearyChat'
  homepage 'https://bearychat.com'

  app 'BearyChat.app'

  zap delete: [
                '~/Preferences/com.node-webkit-builder.bearychat.plist',
                '~/Library/Application Support/BearyChat',
              ]
end
