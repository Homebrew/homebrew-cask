cask 'keeweb' do
  version '1.5.3'
  sha256 'd22774eaf24b7058fbe85b6af5b9c932931c7a33a25509d03b32677e669aba23'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: 'bb6b711f74257a4e478788dc87b1964addf6a2985d29dcd372b144eecf750b8f'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
