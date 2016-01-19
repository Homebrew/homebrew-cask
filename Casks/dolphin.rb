cask 'dolphin' do
  version '4.0-8727'
  sha256 '4469e5f2cac53b877c457bbc55455b4f8fefd37da437fc8a8e35d67b63bd95c3'

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
