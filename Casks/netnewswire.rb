cask 'netnewswire' do
  version '5.0b5'
  sha256 'a5d92567c905e55af806a9f56f8f4a5fe05f560db4bb635c00ec412ee691de4b'

  # github.com/brentsimmons/NetNewsWire was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
