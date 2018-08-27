cask 'printnode' do
  version '4.18.6'
  sha256 '69470c0dcbcd13cd000e934a84e4ef1812b82cc37c067de61cfa5cec196e47dd'

  url "https://app.printnode.com/bundles/printnodemain/downloads/printnode/#{version}/PrintNode-#{version}.dmg"
  name 'PrintNode'
  homepage 'https://www.printnode.com/'

  depends_on macos: '>= :mountain_lion'

  app 'PrintNode.app'
end
