cask 'launchcontrol' do
  version '1.28.3'
  sha256 'd5f08263c615846df220528e267e6b251627c894d6501ae4ad568756cc4ea17b'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '0fdbb5083496bdb5b2e4ccf1192af5be0316f24022d22c0b31aba7b9a6263505'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'
end
