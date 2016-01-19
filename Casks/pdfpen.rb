cask 'pdfpen' do
  version '734.0,1451347971'
  sha256 '265eec35fa5f45c9623b7ee87bbfbc90f0afa2c146ca18a2e2da10774bee7389'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'dfe4c3a82ad4c9f319722fb0dc2e58e73926d0d7fa8d4c2d5c82d71fb7ccbe7d'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end
