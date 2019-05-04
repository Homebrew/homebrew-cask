cask 'irccloud' do
  version '0.10.0'
  sha256 '31bc9f2aa35c2d0835183cfa19d10bf6681527e8367d76323f4831fb706b1897'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
