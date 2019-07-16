cask 'irccloud' do
  version '0.12.0'
  sha256 '7b26c40855200c346c38f6061be36d701a1770cac65e294b035aa041f3050125'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
