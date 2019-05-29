cask 'irccloud' do
  version '0.11.0'
  sha256 '5ea97e99e59dc329f726dc2bfad6d13d9e479f3c5d454be8aaf6d5b7628011ac'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
