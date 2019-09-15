cask 'cisdem-pdf-converter-ocr' do
  version '7.2.0'
  sha256 '2b9472e25273477d6a9041ce1400684f36d23b92756e1d2c3c0c9dd417afd4ef'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
