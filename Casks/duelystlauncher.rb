cask :v1 => 'duelystlauncher' do
  version '0.0.3'
  sha256 'a990d87dda6e86d9da826348ca81e5d96d0cc58145e94e4762adaeca6d5e636d'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-counterplaygames.netdna-ssl.com/launcher/v#{version}/DuelystLauncher-v#{version}.dmg"
  name 'Duelyst'
  homepage 'https://updates.counterplay.co/launcher'
  license :gratis

  app 'DuelystLauncher.app'
  
  uninstall :delete => '~/.counterplay'
end
