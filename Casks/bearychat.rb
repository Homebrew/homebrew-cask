cask 'bearychat' do
  version '2017.03.30'
  sha256 'c5f3d8be8c85285bf297a46ba0a479833373b39e2fa644e0689047d0816347a3'

  url 'https://download.bearychat.com/apps/v2/mac'
  name 'BearyChat'
  homepage 'https://bearychat.com/'

  app 'BearyChat.app'

  zap delete: '~/Library/Application Support/BearyChat_V2'
end
