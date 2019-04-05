cask 'irccloud' do
  version '0.9.0'
  sha256 '82135f8c706511ebb2a24b54f2e901c9acd45c88361a3678e212aaf9fcf8e18e'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
