class RemoteDesktopManager < Cask
  version '1.0.1.0'
  sha256 '7c63fcc059500eba6dc604c3e0115489e8baa3c7ae406c7eb51e0429eceb2a93'

  url "http://download.devolutions.net/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  homepage 'http://remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'
end
