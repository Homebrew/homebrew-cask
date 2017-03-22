cask 'launchcontrol' do
  version '1.29'
  sha256 'ea632b39b4bdb0a4ebef1889d8c5f28623dbac3f94418ae9f8c3146e785f089c'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '3dfbd7e0c4a974295c9795872dbc8d2e9c5e184019c7e82830a1ce568244973a'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
