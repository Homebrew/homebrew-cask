cask 'launchcontrol' do
  version '1.30'
  sha256 :no_check

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'a09eaeaef4391f7fe8ab89c026c15258ab2f913b4bad960ad211899340e5db9d'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
