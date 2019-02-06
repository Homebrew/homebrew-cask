cask 'netnewswire' do
  version '5.0d12'
  sha256 'f59b06977adb9b27e88611d3e512b10aff403eba2d17ed08395042c3fc507134'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
