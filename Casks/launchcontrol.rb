class Launchcontrol < Cask
  version '1.16.1'
  sha256 '1475d384d1bfdb76e49a288b96a310b23a150946c568e045db0c0597b6c0b5a2'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :unknown

  app 'LaunchControl.app'
end
