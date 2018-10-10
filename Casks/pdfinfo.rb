cask 'pdfinfo' do
  version :latest
  sha256 :no_check

  url 'https://www.sybrex.com/download/macgui/files/pdfinfo/PDFInfo.dmg'
  name 'PDFInfo'
  homepage 'https://www.sybrex.com/products/macgui/infomanager/'

  app 'PDFInfo.app'
end
