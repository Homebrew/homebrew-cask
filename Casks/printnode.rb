cask 'printnode' do
  version '4.17.14'
  sha256 'e3ea051a22112ef18bb35d1d37834555df08ba2dcd542eb1244cabf670b5249b'

  url "https://app.printnode.com/bundles/printnodemain/downloads/printnode/#{version}/PrintNode-#{version}.dmg"
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  depends_on macos: '>= :mountain_lion'

  app 'PrintNode.app'
end
