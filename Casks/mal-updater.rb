cask 'mal-updater' do
  version '2.4.3'
  sha256 '1664ec9acd283270d17d861983bf35a9455c2fab937ed126cd19e2377bf612bd'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: 'b2c751aae00799924f68b05b6aed17af4c64cfed969b026c0703dbbc1ffa2ed4'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'MAL Updater OS X.app'

  zap trash: [
               '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
               '~/Library/Application Support/MAL Updater OS X',
             ]
end
