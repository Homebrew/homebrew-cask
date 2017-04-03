cask 'launchcontrol' do
  version '1.30'
  sha256 'fa80937646246527a7cfaea2c99b783229e5397b4c6a57d2d2e34408811326fb'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'a09eaeaef4391f7fe8ab89c026c15258ab2f913b4bad960ad211899340e5db9d'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
