cask 'dolphin' do
  version '4.0-9440'
  sha256 'f432c9c77bff9cdac8802ce378c06e3e7b29848812dc00e4640986dbd67ef8c9'

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
