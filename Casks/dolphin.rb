cask :v1 => 'dolphin' do
  version '4.0-8092'
  sha256 'b27db69a8bf727dbff6146ba9f7ffeca726e918fe4246b64aa8aa404a26c99a5'

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
