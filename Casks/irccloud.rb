cask 'irccloud' do
  version '0.13.0'
  sha256 'f031867a61ea0ab243f55cc415e6e04ccc6351a71dbbddad6b89f614b0764ac0'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
