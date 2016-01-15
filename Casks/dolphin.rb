cask 'dolphin' do
  version '4.0-8560'
  sha256 '8ce5cf2d750e18b826746c3147ce3b4284fd39cf3d274b25389052e3eea61157'

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
