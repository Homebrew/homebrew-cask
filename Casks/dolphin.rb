cask :v1 => 'dolphin' do
  version '4.0-6734'
  sha256 'f1a038c16ff37735775c0f2a89f5b0127f67e20f1ec0e47cae26547ef4258b46'

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
