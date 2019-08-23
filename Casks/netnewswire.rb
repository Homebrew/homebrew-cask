cask 'netnewswire' do
  version '5.0b4'
  sha256 '301caddba27bad5c83c3ae6aef73482d726dd0cc4a4e786354d833c13dbb2579'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
