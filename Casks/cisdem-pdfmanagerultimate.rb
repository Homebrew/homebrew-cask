cask 'cisdem-pdfmanagerultimate' do
  version '2.5.0'
  sha256 '572ed99e8ea18474a0dfe7fd42e0fe704e40607f12a979ada704054fc81d05de'

  url 'https://www.cisdem.com/downloads/cisdem-pdfmanagerultimate-15.dmg'
  appcast 'https://www.cisdem.com/pdf-manager-ultimate-mac/release-notes.html',
          checkpoint: 'a35891d9723f5f33675c20e926f3190c31140ad40bf861a2c0bf8e8db5805fed'
  name 'Cisdem PDFManagerUltimate'
  homepage 'https://www.cisdem.com/pdf-manager-ultimate-mac.html'

  app 'Cisdem PDFManagerUltimate.app'
end
