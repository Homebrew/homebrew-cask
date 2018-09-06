cask 'netnewswire' do
  version '5.0d3'
  sha256 'b0ae90ac9a3e2f01856ed8679aa1fb10993c48d62b59c6230be381a350667702'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
