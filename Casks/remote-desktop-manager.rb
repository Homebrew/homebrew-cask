cask 'remote-desktop-manager' do
  version '4.5.3.0'
  sha256 'c4071a0d12b9741c5f21697b6f93e10b40526734479a35e39913c767fb204dde'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml',
          checkpoint: 'a250332376c79d049226247de42ac8d28f1af3aa6a87960adfb555278adc8e3f'
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
