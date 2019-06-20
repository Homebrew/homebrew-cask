cask 'cisdem-pdf-converter-ocr' do
  version '6.7.0'
  sha256 '15a916e433b284c5891f707b761c546c2c1111a651a77494d929aaa20a7fa946'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
