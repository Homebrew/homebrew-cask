cask 'pdfinfo' do
  version :latest
  sha256 :no_check

  url 'http://www.sybrex.com/download/macgui/files/pdfinfo/PDFInfo.dmg'
  name 'PDFInfo'
  homepage 'http://www.sybrex.com/products/macgui/infomanager/'
  license :gratis

  app 'PDFInfo.app'
end
