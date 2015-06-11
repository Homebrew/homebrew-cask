cask :v1 => 'launchcontrol' do
  version '1.20.2'
  sha256 'c85787f0ffd89e5a9cc49423a84145d894907be453d875413bc8b8ec132d9915'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'b912be992e090a301ab4909d14502d2c855bd7fa5d94bb709713a5f167d478fa'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
