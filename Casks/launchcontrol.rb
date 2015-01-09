cask :v1 => 'launchcontrol' do
  version '1.16.4'
  sha256 'fbc2aa110f3526d91baa8ca8fe7127796e1833c9a67655b3b9009035954a9dee'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'a82b64b1b68b0fc013145825eee9b18930378caa24a664d93d5777848c6fcc15'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
