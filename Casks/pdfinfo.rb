cask :v1 => 'pdfinfo' do
  version :latest
  sha256 :no_check

  url 'http://www.sybrex.com/download/macgui/files/pdfinfo/PDFInfo.dmg'
  name 'PDFInfo'
  homepage 'http://www.sybrex.com/products/macgui/infomanager/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PDFInfo.app'
end
