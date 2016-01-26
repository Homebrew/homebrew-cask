cask 'cyberghost' do
  version '5.0.14.12'
  sha256 'c1ed2c4837be99e0c2fef9c957d9e798a359f1b1bacb03dd5850cc9f779855be'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          checkpoint: '558e5e8b62d828ad319191917628fc202aa5dabc0891bdd38be36199f222685f'
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'
  license :gratis

  app 'CyberGhost 5.app'
end
