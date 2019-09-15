cask 'netnewswire' do
  version '5.0.2'
  sha256 '0787858a789d0dbfb15499652e4e2408680a4a8e21b16ca0c33ce3b7d07a5c3f'

  # github.com/brentsimmons/NetNewsWire was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast 'https://github.com/brentsimmons/NetNewsWire/releases.atom'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
