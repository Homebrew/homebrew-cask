cask 'remote-desktop-manager' do
  version '4.2.1.0'
  sha256 'e2f5665372d9324fac8c1cda8fc7f5c3ecddb243be7bf50a57629ccfcc0ad560'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml',
          checkpoint: '37ddc1327f069c984feb9ec72ee2c22aba11da3db52fad59174bea276ecd6597'
  name 'Remote Desktop Manager'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'
end
