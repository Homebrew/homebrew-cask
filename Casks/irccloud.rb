cask 'irccloud' do
  version '0.8.0'
  sha256 '452238fa03271adaa1e1fc6df45b1ba55ba94b0bd2888824a568193c94d95bc2'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
