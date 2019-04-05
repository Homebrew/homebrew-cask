cask 'netnewswire' do
  version '5.0d16'
  sha256 '49008491b86514a7547baed0477f85623948713eedfd1beb7add56b322471a64'

  url "https://ranchero.com/downloads/NetNewsWire#{version}.zip"
  appcast 'https://ranchero.com/downloads/netnewswire-beta.xml'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
