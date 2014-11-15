cask :v1 => 'little-snitch' do
  version '3.5'
  sha256 '42e0e8009af01ff8050a5c42e49f67b2e0e3424562b21de4648a73062bd2e735'

  url "http://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
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
