cask 'launchcontrol' do
  version '1.28.4'
  sha256 '57b274752809ddd3dcff65ab4df45425e27923937acfdabd7b51bbca5281fc47'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '542ebdb2f3c3a66d4431f493bb1dac1b455cfd306c92e3605cb1910e2b18602b'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
