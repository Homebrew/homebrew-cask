cask 'mal-updater' do
  version '2.3.5.3'
  sha256 '655753754bfb50d0c159ba3b5db135bdc08adc8b21d7bb89a9432bd61ecf4d27'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: '7ebb3a95686b8a2f775a5d8a4f45bf3d578388fc3faef2b7b17434a13e7727d4'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  app 'MAL Updater OS X.app'

  zap trash: [
               '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
               '~/Library/Application Support/MAL Updater OS X',
             ]
end
