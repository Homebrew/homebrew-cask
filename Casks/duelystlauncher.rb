cask 'duelystlauncher' do
  version '0.0.9'
  sha256 '76ae51672348abb779e852a831f0b1bedb289d097ebf3d6e8aea337fc65b4619'

  # downloads-counterplaygames.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://downloads-counterplaygames.netdna-ssl.com/launcher/v#{version}/DuelystLauncher-v#{version}.dmg"
  name 'Duelyst'
  homepage 'https://updates.counterplay.co/launcher'
  license :gratis

  app 'DuelystLauncher.app'

  uninstall delete: '~/.counterplay'

  zap delete: [
                '~/Library/Application Support/Duelyst',
                '~/Library/Application Support/DuelystLauncher',
                '~/Library/Preferences/com.electron.duelyst.plist',
                '~/Library/Preferences/com.electron.duelystlauncher.plist',
              ]
end
