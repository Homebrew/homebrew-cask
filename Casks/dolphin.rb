cask 'dolphin' do
  version '4.0-9202'
  sha256 'f16df059d8932be6d9045e38511aa73528344c6d077e63b2f33a89a400a220b6'

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
