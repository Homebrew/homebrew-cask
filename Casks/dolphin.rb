cask 'dolphin' do
  version '4.0-9426'
  sha256 '4b5857bacc59e523a2ed66e8470532e8fec3acc4da9fc1104f8d2950c0b42e72'

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
