cask 'launchcontrol' do
  version '1.28'
  sha256 '0f39099d9027dfaf397c9f0d4a7c08626b3df5dc2cf4521864298db0ede48685'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '800e2a324b47874056f3296febe032aed9fe320593fbc12cd5edf08781231adf'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
