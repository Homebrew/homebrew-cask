class Launchcontrol < Cask
  version '1.14.2'
  sha256 '9351c57b3956e63f5d995dfe4b9f45fa78a39476dbc3a4b7aa8797b600c4d8ad'
  
  url 'http://www.soma-zone.com/download/files/LaunchControl_1.14.2.tar.bz2'
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  link 'LaunchControl.app'
end
