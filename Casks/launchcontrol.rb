cask :v1 => 'launchcontrol' do
  version '1.19.1'
  sha256 '9adbe6acc858c09625de21519fc38dbf230ae8f7316e455fbfb768a8c97b1db2'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'b912be992e090a301ab4909d14502d2c855bd7fa5d94bb709713a5f167d478fa'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
