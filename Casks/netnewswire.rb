cask 'netnewswire' do
  version '5.0.3'
  sha256 'c78a1015159d0a2154e32ae3e73a2683ec3c684eac81513ebf77478f8770e76a'

  # github.com/brentsimmons/NetNewsWire/ was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast 'https://github.com/brentsimmons/NetNewsWire/releases.atom'
  name 'NetNewsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
