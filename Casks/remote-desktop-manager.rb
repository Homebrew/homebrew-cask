cask 'remote-desktop-manager' do
  version '4.5.1.0'
  sha256 'd19a3cac0c5c9e879f0374fb41c3271cb66b9cfcb0b8534a673f9ed3be9df76d'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml',
          checkpoint: '2a177c8d2bd99879aa048ee9a724f10285da6e187485c7d5c3bbf10233a461c9'
  name 'Remote Desktop Manager'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'

  zap delete: [
                '~/Library/Caches/com.devolutions.remotedesktopmanager',
                '~/Library/Saved Application State/com.devolutions.remotedesktopmanager.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Remote Desktop Manager',
                '~/Library/Application Support/com.devolutions.remotedesktopmanager',
                '~/Library/Preferences/com.devolutions.remotedesktopmanager.plist',
              ]
end
