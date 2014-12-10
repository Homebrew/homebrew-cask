cask :v1 => 'pdfpen' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpen/PDFpen.zip'
  homepage 'http://smilesoftware.com/PDFpen/index.html'
  license :unknown    # todo: improve this machine-generated value

  app 'PDFpen.app'
end
