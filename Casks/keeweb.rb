cask 'keeweb' do
  version '1.1.2'
  sha256 '0afccde62d743134f2e94ca0b433e1bc9ead6439120876861b519eeadd9b1214'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: '615b4a210ffbd4f8e13c1ebf79cc21c085d76429f883a89669103e9de51ccb13'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
