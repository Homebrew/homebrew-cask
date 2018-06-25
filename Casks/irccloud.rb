cask 'irccloud' do
  version '0.7.0'
  sha256 'db2c90e891e5df195b641f84e2e92cac35e9267e448136e2f8083e2036484861'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
