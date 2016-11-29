cask 'irccloud' do
  version '0.3.0'
  sha256 '777a8fbe83f82b5cbd686dc8382a02ed0496521be222e4fecf3c4669d52f6007'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/irccloud-desktop-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom',
          checkpoint: '8d1c92114f5558fc2594610379904feb7bc7bc3b6ecb0ea3c5c44fc92dcc46e6'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
