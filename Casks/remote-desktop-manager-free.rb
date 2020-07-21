cask 'remote-desktop-manager-free' do
  version '2020.2.1.0'
  sha256 '1cfe99a16ef2ee0b2ef26ab7fb9fcecbc3bcf6d2afc1b2d958a5408e4ff7df14'

  # devolutions.net/ was verified as official when first introduced to the cask
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
