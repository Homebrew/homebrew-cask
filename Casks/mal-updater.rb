cask 'mal-updater' do
  version '2.4.4'
  sha256 'efe4b238a0dee5d9baf74af330e6dabd758ce858c4e1ca33d476ac3c1c56af8b'

  # github.com/Atelier-Shiori/malupdaterosx-cocoa was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases/download/#{version}/malupdaterosx-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/malupdaterosx-cocoa/releases.atom',
          checkpoint: 'f0e79ff5bc4c29b1e2bdfb5d50f4edc5f09123f7bd67fd9c758a4e22a8226985'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'MAL Updater OS X.app'

  zap trash: [
               '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
               '~/Library/Application Support/MAL Updater OS X',
             ]
end
