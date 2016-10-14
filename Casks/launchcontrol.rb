cask 'launchcontrol' do
  version '1.28.1'
  sha256 'acdc18660e2c3c624c7146281a406193e69123650e041f014c64c24d23b0acac'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'd01edb1fa6e39dd5fb5cedf0be920ae0ee9ab0df408d17a1873a32439bd0d11e'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
