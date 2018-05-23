cask 'remote-desktop-manager-free' do
  version '5.3.0.0'
  sha256 '5523e2c26b091735eae0f2be55b285f1fd7f25eaae9f80c303b59b99cab1ccd1'

  # devolutions.net was verified as official when first introduced to the cask
  url "http://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg"
  appcast 'http://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml',
          checkpoint: 'a4a534495e21747fe36ac40d88866e594a0ee18db1c8a3b8e915b2bf1e6d36f8'
  name 'Remote Desktop Manager Free'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager Free.app'

  zap trash: [
               '~/Library/Application Support/com.devolutions.remotedesktopmanager.free',
               '~/Library/Preferences/com.devolutions.remotedesktopmanager.free',
             ]
end
