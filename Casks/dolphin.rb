cask :v1 => 'dolphin' do
  version '4.0-7133'
  sha256 'e05048611113197f9c006b7a200ffd88d6b0ddc5a6308d8b80910af589a87142'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  name 'Dolphin'
  homepage 'https://dolphin-emu.org/'
  license :gpl

  app 'Dolphin.app'

  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
