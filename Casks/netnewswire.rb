cask 'netnewswire' do
  version '5.0d5'
  sha256 'f53e3f723f85697ca5757d2d4912662616ae78ce7726269b7c2bbbdc8ae61b37'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
