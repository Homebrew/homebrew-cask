cask :v1 => 'pdfinfo' do
  version :latest
  sha256 :no_check

  url 'http://www.sybrex.com/download/macgui/files/pdfinfo/PDFInfo.dmg'
  homepage 'http://www.sybrex.com/products/macgui/infomanager/'
  license :unknown    # todo: improve this machine-generated value

  app 'PDFInfo.app'
end
