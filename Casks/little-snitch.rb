cask :v1 => 'little-snitch' do
  version '3.5.1'
  sha256 'c743187a5bb8abd36d9d41cc95944b37f6d965f761319f2ffae6d55e8ce45050'

  url "http://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  name 'Little Snitch'
  homepage 'http://www.obdev.at/products/littlesnitch/'
  license :commercial

  installer :manual => 'Little Snitch Installer.app'

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]
end
