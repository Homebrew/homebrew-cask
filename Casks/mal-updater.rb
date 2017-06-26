cask 'mal-updater' do
  version '2.3.5.1'
  sha256 '3bab6af2fdbbb24c1e619a8490e9e9a5a2590e93858e8b062511b0c01152bae2'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: '283ca4d2a647dc827fd9d7d3c721e12058cc00050e2d5db2fab014a787fc4c36'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  app 'MAL Updater OS X.app'

  zap delete: [
                '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
                '~/Library/Application Support/MAL Updater OS X',
              ]
end
