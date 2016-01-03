cask 'cyberghost' do
  version '5.0.14.12'
  sha256 'c1ed2c4837be99e0c2fef9c957d9e798a359f1b1bacb03dd5850cc9f779855be'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          :sha256 => 'c006b554455103fc01c48c491d5d4d3dcc35e16656d3224e48a43d4f70bc9508'
  name 'CyberGhost'
  homepage 'https://www.cyberghostvpn.com/'
  license :gratis

  app 'CyberGhost 5.app'
end
