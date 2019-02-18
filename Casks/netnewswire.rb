cask 'netnewswire' do
  version '5.0d15'
  sha256 '505c01569ec6c815dc19f066b8a1e4f91e3a35b52cb61696a5bdf515d1a7d285'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
