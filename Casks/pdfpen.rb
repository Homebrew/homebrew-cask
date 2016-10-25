cask 'pdfpen' do
  version '821.5,1476995391'
  sha256 'ffdc911d15c3f69b1b2e822bc73144db33832aff6b1b6d0dfc690f560c06b4de'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '6ade3bfe21c7b3bfdf8e3c4fdd21f9367d809ea2d168750927dcb46cafdc1294'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'

  app 'PDFpen.app'
end
