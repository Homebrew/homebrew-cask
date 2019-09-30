cask 'cisdem-pdf-converter-ocr' do
  version '7.4.0'
  sha256 '759861d1d975d6193e6656a1389b4f73c612c8595d8f1c20b77a09ae5644eec7'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
