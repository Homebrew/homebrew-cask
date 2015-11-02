cask :v1 => 'remote-desktop-manager' do
  version '3.0.2.0'
  sha256 '5b145d2f0b65357d0db57a1bbe7516bb7daa878e6a13398f1238f525efa327be'

  # devolutions.net is the official download host per the vendor homepage
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'http://mac.remotedesktopmanager.com/'
  license :commercial

  app 'Remote Desktop Manager.app'
end
