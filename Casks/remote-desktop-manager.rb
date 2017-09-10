cask 'remote-desktop-manager' do
  version '4.4.2.0'
  sha256 '49b833f23f5a88d1ba6ab84ac1967044d0423f233f843e08bddd1e376189cca8'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManager.xml',
          checkpoint: 'd28958f114906feb9433ca50cc6d9d037340d5c75bf8b969dc73c6508513e4bf'
  name 'Remote Desktop Manager'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager.app'
end
