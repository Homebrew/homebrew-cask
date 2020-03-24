cask 'irccloud' do
  version '0.14.1'
  sha256 '7b8cae87df4327a015fffda47fde8d12a9cf77ddb44d847e10cd385a4cc05bc9'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
