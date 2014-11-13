cask :v1 => 'pdfpenpro' do
  version :latest
  sha256 :no_check

  url 'http://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/PDFpenPro.zip'
  homepage 'http://www.smilesoftware.com/PDFpenPro/index.html'
  license :unknown

  app 'PDFpenPro.app'
end
