cask :v1 => 'little-snitch' do
  version '3.6'
  sha256 'f33bf45f975ebdd5034ad5e53a65469377ace557492ea752098ba7ad0c09a07a'

  url "https://www.obdev.at/downloads/littlesnitch/LittleSnitch-#{version}.dmg"
  name 'Little Snitch'
  homepage 'https://www.obdev.at/products/littlesnitch/'
  license :commercial

  installer :manual => 'Little Snitch Installer.app'

  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]
end
