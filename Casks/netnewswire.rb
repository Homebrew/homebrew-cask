cask 'netnewswire' do
  version '5.0a4'
  sha256 'a85ec1a3f7dddf35934443926dc7138b6429b0673908e0cbcbeec2c53134859b'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
