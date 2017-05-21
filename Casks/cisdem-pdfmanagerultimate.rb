cask 'cisdem-pdfmanagerultimate' do
  version '2.5.0'
  sha256 '572ed99e8ea18474a0dfe7fd42e0fe704e40607f12a979ada704054fc81d05de'

  url 'https://www.cisdem.com/downloads/cisdem-pdfmanagerultimate-15.dmg'
  appcast 'https://www.cisdem.com/pdf-manager-ultimate-mac/release-notes.html',
          checkpoint: '1a02e2ff75effa10451a124a858681542b20527d40d7ea3142450943335212e7'
  name 'Cisdem PDFManagerUltimate'
  homepage 'https://www.cisdem.com/pdf-manager-ultimate-mac.html'

  app 'Cisdem PDFManagerUltimate.app'
end
