cask 'cisdem-pdf-converter-ocr' do
  version '7.1.0'
  sha256 '6c37718bfe063813eac936254860b0d22277281a3b1781c688eb60066b6ef93c'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
