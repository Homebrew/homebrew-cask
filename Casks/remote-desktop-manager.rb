cask :v1 => 'remote-desktop-manager' do
  version '1.0.2.0'
  sha256 'd724df0195169b4b3bac4db6273433f4d64b1877dd50c1745ff1bc3b6115a258'

  url "http://download.devolutions.net/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'
  license :gratis

  app 'Remote Desktop Manager.app'
end
