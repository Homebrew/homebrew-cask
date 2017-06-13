cask 'mal-updater' do
  version '2.3.4'
  sha256 '954c9cf3098b13e2bd187ca270f4155935b47ab3d3299b985486c83b301443b5'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: '2aa37529a02d319748b68aa2bb8f0c2f5cd0c98f1ded2f0431530f2640b3b9f8'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  app 'MAL Updater OS X.app'

  zap delete: [
                '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
                '~/Library/Application Support/MAL Updater OS X',
              ]
end
