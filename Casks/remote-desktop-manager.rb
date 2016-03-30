cask 'remote-desktop-manager' do
  version '3.0.6.0'
  sha256 'd0b6351831e81009cb115a23166f883eacedfef920c732c3525119d02d0a6a07'

  # devolutions.net is the official download host per the vendor homepage
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'
  license :commercial

  app 'Remote Desktop Manager.app'
end
