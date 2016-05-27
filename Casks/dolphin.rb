cask 'dolphin' do
  version '4.0-9401'
  sha256 'e039178f4ae9954051532cfa9a2e771a4265d0eb84640b38a944c55d56fc4db7'

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
