cask 'netnewswire' do
  version '5.0b1'
  sha256 '5274c931e0dde43aefc2c6768cb1fd23d69e91c5ae9c8c5d023d06701c5ce17a'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
