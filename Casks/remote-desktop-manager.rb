cask :v1 => 'remote-desktop-manager' do
  version '2.0.4.0'
  sha256 '8b2350908d9ffd118d14c35bac9a1fb8848ae712ed862a194807c92d6f84adcd'

  # devolutions.net is the official download host per the vendor homepage
  url "http://download.devolutions.net/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'
  license :gratis

  app 'Remote Desktop Manager.app'
end
