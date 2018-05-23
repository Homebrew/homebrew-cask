cask 'irccloud' do
  version '0.6.0'
  sha256 'f3d791032171fed6cca9d95878514b6c315a0ec13f7c7482d1b7e6b43d818440'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom',
          checkpoint: '7d71a18d23d43899cfdb9d92695a35a387ae94b3d4e040db9972139023e78fb4'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
