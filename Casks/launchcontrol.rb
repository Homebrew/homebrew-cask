cask 'launchcontrol' do
  version '1.25'
  sha256 'cafa8454acba01fadc5710c2f395ca288e9eacf92ad6725593c1f7466da46e79'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '1d7bfd545b9be977aa0ebb3bde5e171e716d7875123b0dfd8bfc8689b259d2f9'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
