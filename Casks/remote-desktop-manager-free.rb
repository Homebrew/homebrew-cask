cask 'remote-desktop-manager-free' do
  version '5.3.1.0'
  sha256 '80071a1a111fca2007d26eaab0463ba9613c7b9af4c0bab6d4d75201fd8a46fb'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml',
          checkpoint: 'c3fa9e6d76b53e67e60bf92c076d592aab673e39223b7285e0be293dd6a662e8'
  name 'Remote Desktop Manager Free'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager Free.app'

  zap trash: [
               '~/Library/Application Support/com.devolutions.remotedesktopmanager.free',
               '~/Library/Preferences/com.devolutions.remotedesktopmanager.free',
             ]
end
