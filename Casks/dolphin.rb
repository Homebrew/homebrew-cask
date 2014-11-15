cask :v1 => 'dolphin' do
  version '4.0-3587'
  sha256 'c2b526d6dd8d9ff74ac908d2b13562910486b1647dbf022b36ac91f42ebfa499'

  url "http://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  homepage 'http://www.dolphin-emu.org/'
  license :unknown

  app 'Dolphin.app'
  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
