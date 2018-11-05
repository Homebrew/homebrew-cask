cask 'remote-desktop-manager-free' do
  version '6.0.1.0'
  sha256 'cb938593674dbc2b424040df620d099747ef8924e7345824a5f877ccd28c9bb9'

  # devolutions.net was verified as official when first introduced to the cask
  url "https://cdn.devolutions.net/download/Mac/Devolutions.RemoteDesktopManager.Free.Mac.#{version}.dmg"
  appcast 'https://cdn.devolutions.net/download/Mac/RemoteDesktopManagerFree.xml'
  name 'Remote Desktop Manager Free'
  homepage 'https://mac.remotedesktopmanager.com/'

  app 'Remote Desktop Manager Free.app'

  zap trash: [
               '~/Library/Application Support/com.devolutions.remotedesktopmanager.free',
               '~/Library/Preferences/com.devolutions.remotedesktopmanager.free',
             ]
end
