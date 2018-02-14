cask 'mal-updater' do
  version '2.3.14'
  sha256 'bddadcd9b44cec03b5877b9e65e59f708ebb071eaedc788e40b2c5cd2fc26d81'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: '67bac5f73ef3d8e452ae5ab7df42b35c0b4f5a7674f57e45226a3d8a57858b28'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'MAL Updater OS X.app'

  zap trash: [
               '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
               '~/Library/Application Support/MAL Updater OS X',
             ]
end
