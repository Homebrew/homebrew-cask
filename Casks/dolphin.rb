cask 'dolphin' do
  version '4.0-8863'
  sha256 '1bf8c2cd67b4edd4324bb0df593a470d32d7a352a5979291990de2edde5221cb'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'
  license :gpl

  app 'Dolphin.app'

  zap delete: [
                '~/Library/Application Support/Dolphin',
                '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
              ]
end
