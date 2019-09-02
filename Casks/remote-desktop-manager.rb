cask 'remote-desktop-manager' do
  version '2019.1.7.0'
  sha256 'e3aaee3596823915d054a407f401c6ea36055cdbfaea160a74d8928b7fd9cf10'

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
