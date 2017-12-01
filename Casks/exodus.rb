cask 'exodus' do
  version '1.39.4'
  sha256 '4e44b3c8a33f7abd91b431866f1eb40aa951f417c51aa4cf3ef7b1474647329e'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '84c6e41850e354840eaeabb56f689b4c2b9fca7fda64620ef0b705ad20c60ad8'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
