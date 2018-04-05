cask 'remote-desktop-manager-free' do
  version '5.2.0.0'
  sha256 '0cf31e634513b2d70d0f90d5cef1aa19c439723b484910f8a3013c8548bdd9b4'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml',
          checkpoint: '918f464ca919afcd7b166d5b3d8d056f32357e3aab4809037724c026fd428902'
  name 'Remote Desktop Manager Free'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager Free.app'

  zap trash: [
               '~/Library/Application Support/com.devolutions.remotedesktopmanager.free',
               '~/Library/Preferences/com.devolutions.remotedesktopmanager.free',
             ]
end
