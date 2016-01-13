cask 'cyberghost' do
  version '5.0.14.12'
  sha256 'c1ed2c4837be99e0c2fef9c957d9e798a359f1b1bacb03dd5850cc9f779855be'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          :checkpoint => 'fbff62a26fcda5e89727f2ba2bcb0f773f461f7740890b6eb5f6abf3cca15350'
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'
  license :gratis

  app 'CyberGhost 5.app'
end
