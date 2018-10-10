cask 'netnewswire' do
  version '5.0d7'
  sha256 'db2dd7363c910f1e6a6c4fc9734cfb9d13cffd3d1b30f9501d3a9a2be63b0b9f'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
