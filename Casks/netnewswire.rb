cask 'netnewswire' do
  version '5.0d14'
  sha256 '07d28db14b73ae04183bc4db8d941df7cad09e785989d21cb68a3758903c246a'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
