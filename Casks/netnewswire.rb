cask 'netnewswire' do
  version '5.0d8'
  sha256 '657292ab4fac05ab5045f682f93a6da3071a273181dd70a6993991abf5193753'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'NetNewsWire.app'
end
