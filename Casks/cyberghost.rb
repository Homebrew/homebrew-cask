cask :v1 => 'cyberghost' do
  version '5.0.14.11'
  sha256 'c1f10d6734482b319d66ef546cf31c35f9386b1befd80de6495e48f47c9d610e'

  url "https://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  name 'CyberGhost'
  appcast 'https://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          :sha256 => 'c006b554455103fc01c48c491d5d4d3dcc35e16656d3224e48a43d4f70bc9508'
  homepage 'https://www.cyberghostvpn.com/'
  license :gratis

  app 'CyberGhost 5.app'
end
