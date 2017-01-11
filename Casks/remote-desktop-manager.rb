cask 'remote-desktop-manager' do
  version '4.0.1.0'
  sha256 '490ba72bc58cd4a2b916ae730dc744f462312dce2c0d3ef4f2a9ea1f1dc9078e'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  name 'Remote Desktop Manager'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'
end
