cask 'netnewswire' do
  version '5.0d13'
  sha256 '3901ac4447460aee9bfe871e088f7b15cb0b65515bb0a0b1df543c2ad414f13c'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
