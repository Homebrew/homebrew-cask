class Dolphin < Cask
  version '4.0-3517'
  sha256 '413adc0fc7ff4ffb2a1254939fbfe4cff2aa603ed955f37f48dcedb8483be1d4'

  url "http://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  homepage 'http://www.dolphin-emu.org/'
  license :unknown

  app 'Dolphin.app'
  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
