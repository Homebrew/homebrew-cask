cask :v1 => 'launchcontrol' do
  version '1.20.1'
  sha256 '5994bcaa47455c898486cf98894b7636a15227368d298bcd0904c7bc86f0bbe4'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'b912be992e090a301ab4909d14502d2c855bd7fa5d94bb709713a5f167d478fa'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
