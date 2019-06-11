cask 'netnewswire' do
  version '5.0a3'
  sha256 '576a7bdb059827875d23b6e0cb721a40d70ceb19d8e84177f679a611c2fe1de0'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
