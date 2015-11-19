cask :v1 => 'launchcontrol' do
  version '1.24'
  sha256 'd39ef018e93efc7997210934ba226d8aa8da048b05d0889c36e225bb6397d302'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '7398c1ec2a275ac327fe8fca6e5ae832f91308e9aa5c92f7138fc8c81dd9146e'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
