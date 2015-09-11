cask :v1 => 'remote-desktop-manager' do
  version '2.0.4.0'
  sha256 'd5ba2c9c7242fcc55245ba39558d30de24ed27c2bff9e11a78753e2ff5e90fce'

  # devolutions.net is the official download host per the vendor homepage
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'
  license :gratis

  app 'Remote Desktop Manager.app'
end
