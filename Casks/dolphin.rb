cask 'dolphin' do
  version '4.0-9418'
  sha256 'faa1fe36b717ee487cc4081ea8979b0bc2caa8f650bb36963aed0c22344263f5'

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
