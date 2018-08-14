cask 'remote-desktop-manager-free' do
  version '5.5.0.0'
  sha256 '02d1bc79496bc287787e4e4f86be1b5afd701d5f379d7e96a8c6b32cbad24fc8'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml'
  name 'Remote Desktop Manager Free'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager Free.app'

  zap trash: [
               '~/Library/Application Support/com.devolutions.remotedesktopmanager.free',
               '~/Library/Preferences/com.devolutions.remotedesktopmanager.free',
             ]
end
