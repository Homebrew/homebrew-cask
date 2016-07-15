cask 'keeweb' do
  version '1.2.2'
  sha256 '8b4a629a9be8781864302f2bf204f96449383eaed16bd5b6930369057d3fa2b1'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '552205c4775461633d4ce431b3593b2a1f9b52cf35733a512964acd24bfb1c80'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
