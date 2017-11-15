cask 'irccloud' do
  version '0.4.0'
  sha256 '2b2fd80b8b982e158f6050f74ca81cb6fe9321d178f903589ea5adb5394d0cd6'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/IRCCloud-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom',
          checkpoint: '9b910adc87328ee270f764581af8db7e7699aa4001c39398dc03ea343002fc87'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
