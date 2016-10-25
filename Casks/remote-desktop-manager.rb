cask 'remote-desktop-manager' do
  version '3.6.1.1'
  sha256 'd46cd3ae3ad0e9e2d4d8da78508c380397fa36f12980eb7bddc991d2220f4ea7'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'
end
