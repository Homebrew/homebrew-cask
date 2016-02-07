cask 'launchcontrol' do
  version '1.25.2'
  sha256 'f58123c7aee8fe8438bbd1c3f977f13f359261afe30f902d799f721989ce33af'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '8819ef39e5f98fcedc908d236a5f425eaa1f841abdcf0d681193c521fc6c9aa7'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
