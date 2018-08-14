cask 'irccloud' do
  version '0.7.2'
  sha256 'd44a3e2796e8ac3ae8a346f1d78d66466ad3ca9968b312e7268ac27a057278d7'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
