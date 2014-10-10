class LittleSnitch < Cask
  version '3.4.1'
  sha256 '4af1bcb47e580c6aa692ce3635648d6679e48dec5ae683dc74dd968bef9cf27b'

  url "http://www.obdev.at/downloads/LittleSnitch/LittleSnitch-#{version}.dmg"
  homepage 'http://www.obdev.at/products/littlesnitch/index.html'
  license :unknown

  caveats do
    manual_installer 'Little Snitch Installer.app'
  end
  zap :delete => [
                  '~/Library/Preferences/at.obdev.LittleSnitchNetworkMonitor.plist',
                  '~/Library/Application Support/Little Snitch/rules.usr.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.xpl',
                  '~/Library/Application Support/Little Snitch/configuration.user.xpl',
                 ]
end
