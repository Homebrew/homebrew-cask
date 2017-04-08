cask 'pdfpen' do
  version '834.1,1491271097'
  sha256 '1a7c2b7ceedcf30dedf8bca6326842f17fa66edf2552030138f82d98ed2b443d'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: 'b11aad2c6c88f13c85b47081770173da679040e2d02ad9cfbcee44a348f18256'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  app 'PDFpen.app'
end
