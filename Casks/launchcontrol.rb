cask :v1 => 'launchcontrol' do
  version '1.20'
  sha256 '791d9617e092e0a1ff6e1233ddbecbd643f6ecc923d94bd29b330f87a59cd8f6'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'b912be992e090a301ab4909d14502d2c855bd7fa5d94bb709713a5f167d478fa'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
