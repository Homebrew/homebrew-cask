cask :v1 => 'dolphin' do
  version '4.0-7952'
  sha256 '4c136378fd0656a8239f728fb0182e797aa30f4e5f8be17f0358de32dc86b844'

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
