cask 'beekeeper-studio' do
  version '1.3.0'
  sha256 '4061d94935d88816f0d9ddd2da971b0dc7133c2373d09b9649fd46e01a376607'

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
