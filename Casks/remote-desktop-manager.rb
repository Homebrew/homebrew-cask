cask 'remote-desktop-manager' do
  version '2019.1.4.0'
  sha256 'e0446226bfc7578e60d99fb787325e7c2ff7d09138ff06571b4fdc480ce8ff03'

  # devolutions.net was verified as official when first introduced to the cask
  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'https://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml'
  name 'Remote Desktop Manager'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'

  zap trash: [
               '~/Library/Application Support/Remote Desktop Manager',
               '~/Library/Application Support/com.devolutions.remotedesktopmanager',
               '~/Library/Caches/com.devolutions.remotedesktopmanager',
               '~/Library/Preferences/com.devolutions.remotedesktopmanager.plist',
               '~/Library/Saved Application State/com.devolutions.remotedesktopmanager.savedState',
             ]
end
