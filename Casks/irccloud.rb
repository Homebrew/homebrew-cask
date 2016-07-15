cask 'irccloud' do
  version '0.2.0'
  sha256 'fee77d5ac13efb540c1040ede2bad959ad11db81746eccbee63f57dd9e73d31a'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/irccloud-desktop-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom',
          checkpoint: '925fb5e8f45eef291326e093652187b2bfef06785327be6db1c442e4eb814e97'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'
  license :apache

  app 'IRCCloud.app'
end
