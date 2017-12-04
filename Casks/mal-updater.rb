cask 'mal-updater' do
  version '2.3.8'
  sha256 '325914225fa4daea7a6c26a6f98c46ced9f4f1d32d537969f530747f40447a97'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: '23d50521982c7bd3e58d3d205bc0eb24d3f650f1a9b0857b5ee96bcae5d06110'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'MAL Updater OS X.app'

  zap trash: [
               '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
               '~/Library/Application Support/MAL Updater OS X',
             ]
end
