cask 'printnode' do
  version '4.20.5'
  sha256 '39d2d3d8a1cb541d0dcad4361dd4c0e7d284b8be958bb9a1deea7e7b11734249'

  url "https://dl.printnode.com/client/printnode/#{version}/PrintNode-#{version}.dmg"
  appcast 'https://www.printnode.com/en/download'
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  app 'PrintNode.app'
end
