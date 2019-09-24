cask 'cisdem-pdf-converter-ocr' do
  version '7.3.0'
  sha256 'd95e762e63668e3beb8edfe050d8ffbea75bf26f34dc97e948ea7afd3d1067fb'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
