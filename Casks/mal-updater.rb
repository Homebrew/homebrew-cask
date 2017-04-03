cask 'mal-updater' do
  version '2.3.1'
  sha256 '52b1c4c797f948f6ec7e7110e6075ac8981da9eb6b6abeb4d5d8e93bb1fafbc7'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: '2f94551913670ae52e80c2a465d0f77e9e7c5bb5be92e242f6e0d84657e98ff7'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  app 'MAL Updater OS X.app'

  zap delete: [
                '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
                '~/Library/Application Support/MAL Updater OS X',
              ]
end
