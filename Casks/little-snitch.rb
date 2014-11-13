cask :v1 => 'little-snitch' do
  version '3.4.2'
  sha256 'ddb2e739334d759508bb356ae7b18a3228664fd5a6d5aff39d355f8c0d23e8b3'

  url "http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  license :unknown

  installer :manual => 'Little Snitch Installer.app'

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]
end
