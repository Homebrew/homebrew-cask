cask 'remote-desktop-manager' do
  version '5.3.0.0'
  sha256 'fb934caa1e856b56f21e59a52a849bfd1e7c4d507496e280a226eeaf40bc0e4d'

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
