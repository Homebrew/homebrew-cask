cask 'netnewswire' do
  version '5.0d6'
  sha256 'befe574f33664b7b625d373623d786f124da890df514989407cafc6633dd6e5d'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
