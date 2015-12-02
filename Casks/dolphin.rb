cask :v1 => 'dolphin' do
  version '4.0-8225'
  sha256 'db81a7a45cdbbd02a5020caf2defd725005d1effe9f6abefa42242365100cb74'

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
