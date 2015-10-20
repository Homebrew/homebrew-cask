cask :v1 => 'duelystlauncher' do
  version '0.0.4'
  sha256 '8a5fbe6fdba433cf7d57d8da8f238d136f8e0ce436cf250101df56a71f4da898'

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
