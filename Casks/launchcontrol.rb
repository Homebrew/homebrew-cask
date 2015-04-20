cask :v1 => 'launchcontrol' do
  version '1.19.2'
  sha256 '58e8a5888b64438b8dae01dab61dd7909f498f4b03ddee7c7ac4781205a5f9b8'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'b912be992e090a301ab4909d14502d2c855bd7fa5d94bb709713a5f167d478fa'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
