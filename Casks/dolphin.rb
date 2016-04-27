cask 'dolphin' do
  version '4.0-9230'
  sha256 'fd193bf0bc204d50d79e9cfc0df5a41fe81f43f8d6cfae61eeb24141a12a484b'

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
