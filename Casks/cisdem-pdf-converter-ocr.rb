cask 'cisdem-pdf-converter-ocr' do
  version '6.6.0'
  sha256 '4ad587a08725cf847b4f4abbcfe06f91beea8f6beca933d795457532c74051ad'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
