cask 'netnewswire' do
  version '5.0a2'
  sha256 'a13dcbc084f992998bf339990a4e143e3ede4ae9035439f25991f94573a75563'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
