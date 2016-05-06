cask 'liteide' do
  version '29'
  sha256 '4a21386696edbbf8464d22539bc1d8cae0d1ecb694965a977c0206af64abc20d'

  # sourceforge.net/project/liteide was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx-qt4.zip"
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'
  license :gpl

  app 'LiteIDE.app'
end
