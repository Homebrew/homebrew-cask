cask :v1 => 'pdfpen' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpen/PDFpen.zip'
  homepage 'http://smilesoftware.com/PDFpen/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PDFpen.app'
end
