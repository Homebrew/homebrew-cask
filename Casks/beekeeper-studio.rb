cask 'beekeeper-studio' do
  version '1.6.10'
  sha256 'd0e4cf88a42a3876d3c4ddcd384b8c5e104a874b670b2480d65bce8d0a37914d'

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
