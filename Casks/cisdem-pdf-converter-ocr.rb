cask 'cisdem-pdf-converter-ocr' do
  version '6.5.0'
  sha256 'cb49366f28c3e8815d30ea68bbbf4affbc397a3a2ceb8d03d2d48a812fea9ba9'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
