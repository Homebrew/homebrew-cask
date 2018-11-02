cask 'openboardview' do
  version 'R7.3'
  sha256 '6c56c201c122a97b4d4ade7dd38140dec66d84a03eb2d9b52d33e479d9e70e61'

  # github.com/inflex/OpenBoardView was verified as official when first introduced to the cask
  url "https://github.com/inflex/OpenBoardView/releases/download/#{version}/OpenBoardView-#{version}-Darwin.dmg"
  appcast 'https://github.com/OpenBoardView/OpenBoardView/releases.atom'
  name 'OpenBoardView'
  homepage 'https://openboardview.org/'

  app 'openboardview.app'
end
