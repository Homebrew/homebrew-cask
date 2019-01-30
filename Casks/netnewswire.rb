cask 'netnewswire' do
  version '5.0d9'
  sha256 '7c599cebd8594817625351b71a0bdf8129b3a75bc17a91f8d7e05eabb3691cb8'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
