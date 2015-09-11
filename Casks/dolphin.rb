cask :v1 => 'dolphin' do
  version '4.0-7170'
  sha256 'a651e91271e0dd4c4c9e9d8e8e853d858fcd8cd2b97fcf7f0183e0d631b604bb'

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
