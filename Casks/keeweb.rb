cask 'keeweb' do
  version '1.0.3'
  sha256 'f5aaa9596d162dd8713572b8b351a722440398330a56f59e151376c1b4b9efa9'

  # github.com/antelle/keeweb was verified as official when first introduced to the cask
  url "https://github.com/antelle/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/antelle/keeweb/releases.atom',
          checkpoint: 'e14958c03c43c90a826f481232e640ff42d506a8c2d5b0ffe3986fc16860d9a7'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
