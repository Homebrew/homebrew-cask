cask 'remote-desktop-manager' do
  version '4.3.0.0'
  sha256 '233ead2c31c627626c6bff34cf158441602e4a439263a94c235fef2bf894febf'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml',
          checkpoint: '0f20dc31c6a641a3c4dee2a135bba73e432a1a8b00329cf2d63c54bcf720dde0'
  name 'Remote Desktop Manager'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'
end
