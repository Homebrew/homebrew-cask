cask 'netnewswire' do
  version '5.0d10'
  sha256 '3d481c294343665cdbb8e6426a40602cce7e275c36ff1e53136d41e8b2ecc0db'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
