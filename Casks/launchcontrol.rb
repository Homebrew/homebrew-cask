cask :v1 => 'launchcontrol' do
  version '1.16.2'
  sha256 '207b90ff2342ad3eee66036c7e97057d1c73f5c81abd243a4804e715d371e015'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          :sha256 => 'a82b64b1b68b0fc013145825eee9b18930378caa24a664d93d5777848c6fcc15'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :unknown

  app 'LaunchControl.app'
end
