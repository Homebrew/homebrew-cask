cask 'netnewswire' do
  version '5.0d17'
  sha256 '70ee80d9d396b5f78867e79e36613a6b89443240fac73ac6f08b0828d20fc3f4'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
