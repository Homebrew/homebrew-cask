cask 'netnewswire' do
  version '5.0d4'
  sha256 '21a2823fbb1431b84746bc53101674ca49929afa9f04a421bab4f375a6ce7054'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
