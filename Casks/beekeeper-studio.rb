cask 'beekeeper-studio' do
  version '1.6.4'
  sha256 '1187c364dde12e204507e71ba275e5087ccf96f5d2b1da72f8bcbad3556eb51d'

  # github.com/beekeeper-studio/beekeeper-studio/ was verified as official when first introduced to the cask
  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}.dmg"
  appcast 'https://github.com/beekeeper-studio/beekeeper-studio/releases.atom'
  name 'Beekeeper Studio'
  homepage 'https://www.beekeeperstudio.io/'

  auto_updates true

  app 'Beekeeper Studio.app'

  zap trash: [
               '~/Library/Application Support/Caches/beekeeper-studio-updater',
               '~/Library/Application Support/beekeeper-studio',
               '~/Library/Caches/io.beekeeperstudio.desktop',
               '~/Library/Caches/io.beekeeperstudio.desktop.ShipIt',
               '~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist',
               '~/Library/Preferences/io.beekeeperstudio.desktop.plist',
               '~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState',
             ]
end
