cask 'printnode' do
  version '4.19.0'
  sha256 'b9a5903168832858afbda81453c58c40920762bb1003c2520e2299a35a2d64e6'

  url "https://dl.printnode.com/client/printnode/#{version}/PrintNode-#{version}.dmg"
  appcast 'https://www.printnode.com/download'
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  depends_on macos: '>= :mountain_lion'

  app 'PrintNode.app'
end
