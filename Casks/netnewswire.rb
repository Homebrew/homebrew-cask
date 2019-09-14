cask 'netnewswire' do
  version '5.0.1'
  sha256 '2d52ba4bd191331d55d1b0e46f78c3cdde9e5e51279b05983fe4f1a22bb92e6c'

  # github.com/brentsimmons/NetNewsWire was verified as official when first introduced to the cask
  url "https://github.com/brentsimmons/NetNewsWire/releases/download/mac-#{version}/NetNewsWire#{version}.zip"
  appcast 'https://github.com/brentsimmons/NetNewsWire/releases.atom'
  name 'NetNetsWire'
  homepage 'https://ranchero.com/netnewswire/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'NetNewsWire.app'
end
