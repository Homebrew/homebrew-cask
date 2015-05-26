cask :v1 => 'remote-desktop-manager' do
  version '1.1.11.0'
  sha256 'f5e9ec3d2a3bea912e1686ee167f4dcca5643d504fd1cac49381eaf446e5f82d'

  # devolutions.net is the official download host per the vendor homepage
  url "http://download.devolutions.net/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'
  license :gratis

  app 'Remote Desktop Manager.app'
end
