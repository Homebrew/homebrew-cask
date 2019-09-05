cask 'netnewswire' do
  version '5.0'
  sha256 'b917714d2d42f8517f17a2a5463dfc0ca6ae4990b57f175eb3bd8152891055ea'

  # github.com/brentsimmons/NetNewsWire was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast 'https://github.com/brentsimmons/NetNewsWire/releases.atom'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
