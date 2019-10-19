cask 'netnewswire' do
  version '5.0.3b2'
  sha256 '2eb2dafc6e6fa06b617eecc30d02fc529bede171386bf916bc1707419a7db8e3'

  # github.com/brentsimmons/NetNewsWire was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast 'https://github.com/brentsimmons/NetNewsWire/releases.atom'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
