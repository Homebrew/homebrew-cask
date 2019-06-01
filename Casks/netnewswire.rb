cask 'netnewswire' do
  version '5.0a1'
  sha256 'db6390b9c33c6511c2a6f6c4dd1f6ccbf7b6c79bdda31110a7934c24427ba676'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
