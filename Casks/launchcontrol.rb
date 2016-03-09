cask 'launchcontrol' do
  version '1.26.1'
  sha256 '1fa73795989184bdeeeaa5b4439efaec4c6da90ac4a78cf2ef2c59386928c258'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'ebdd759fb2259691b4714c91576999b3659e13f2c21934064893d30d5a2a85d5'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
