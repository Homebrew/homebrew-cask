cask 'printnode' do
  version '4.19.0'
  sha256 '2fd9cebf22dfc33bb49f39a82e363ea94626cfa2791b833026944f9809879805'

  url "https://dl.printnode.com/client/printnode/#{version}/PrintNode-#{version}.dmg"
  appcast 'https://www.printnode.com/download'
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  app 'PrintNode.app'
end
