cask :v1 => 'duelystlauncher' do
  version '0.0.5'
  sha256 'ec38c906b05a8ac74560ac0d96c4c8189876c579d485bc3af4a6ceac4ee6baad'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-counterplaygames.netdna-ssl.com/launcher/v#{version}/DuelystLauncher-v#{version}.dmg"
  name 'Duelyst'
  homepage 'https://updates.counterplay.co/launcher'
  license :gratis

  app 'DuelystLauncher.app'

  uninstall :delete => '~/.counterplay'

  zap :delete => [
                  '~/Library/Application Support/Duelyst',
                  '~/Library/Application Support/DuelystLauncher',
                  '~/Library/Preferences/com.electron.duelyst.plist',
                  '~/Library/Preferences/com.electron.duelystlauncher.plist',
                 ]
end
