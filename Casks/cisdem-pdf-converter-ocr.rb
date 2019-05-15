cask 'cisdem-pdf-converter-ocr' do
  version '6.4.0'
  sha256 '1690e57cf6c8aa575353a246dbe72a755d898ef3b420f712ba487b36cb45bb07'

  url 'http://download.cisdem.com/cisdem-pdfconverterocr.dmg'
  appcast 'https://www.cisdem.com/pdf-converter-ocr-mac/release-notes.html'
  name 'Cisdem PDF Converter OCR'
  homepage 'https://www.cisdem.com/pdf-converter-ocr-mac.html'

  app 'Cisdem PDF Converter OCR.app'
end
