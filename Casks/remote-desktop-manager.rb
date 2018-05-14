cask 'remote-desktop-manager' do
  version '5.3.1.0'
  sha256 '96109b73335a9a74b8d4739c70f91939f10e5dfd99bb60fe8441f184aab72626'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml',
          checkpoint: 'f9e07721a520a93b2467e89454c912cb23c974d3ff27b10ab28d5c90b50b0b8d'
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
