cask 'launchcontrol' do
  version '1.25.2'
  sha256 'f58123c7aee8fe8438bbd1c3f977f13f359261afe30f902d799f721989ce33af'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => '8b828cd89bae76476056fcc88800bb5ca2c7c7d950e7b966e876e8c87de2f804'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
