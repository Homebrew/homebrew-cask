class Dolphin < Cask
  version '4.0'
  sha256 'c5968f668225d76273c77ad4ddbcb1e9eb2fc5df59918395c04ebf53f80ca8a8'

  url "https://dl-mirror.dolphin-emu.org/#{version}/dolphin-#{version}.dmg"
  homepage 'http://www.dolphin-emu.org/'
  license :unknown

  app 'Dolphin.app'
  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
