cask 'dolphin' do
  version '4.0-9327'
  sha256 'e766bb4cde955ccdb03927262d76e65767f001c1f9f10ce3ac059b460eab1480'

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
