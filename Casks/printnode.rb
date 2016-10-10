cask 'printnode' do
  version '4.8.0'
  sha256 '3c8203d7200de76deeb0274b7ff69b54fd21e91a7140210c1459fd46f78b04fa'

  url "https://app.printnode.com/bundles/printnodemain/downloads/printnode/#{version}/PrintNode-#{version}+dd7.dmg"
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  depends_on macos: '>= :mountain_lion'

  app 'PrintNode.app'
end
