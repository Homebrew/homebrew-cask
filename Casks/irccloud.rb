cask 'irccloud' do
  version '0.7.1'
  sha256 'dce30ecc6cb2d769e51326019d2c45eec12524f11ad08f0fdbc0e42800a4e2d5'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
