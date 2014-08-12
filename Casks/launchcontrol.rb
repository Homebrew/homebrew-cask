class Launchcontrol < Cask
  version '1.15.3'
  sha256 'fecdd0dd58e937d3d3e9894ba046f52f61f001826bb2ab1beacedc23e8da3fd7'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  link 'LaunchControl.app'
end
