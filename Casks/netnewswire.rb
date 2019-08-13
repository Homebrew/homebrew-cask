cask 'netnewswire' do
  version '5.0b2'
  sha256 '1376b49e0ce1d72c8c6c9ba24cc78e84ae656d96ec6ea81362a5e5dd911c188d'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
