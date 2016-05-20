cask 'pdfpen' do
  version '801.3,1463500749'
  sha256 'fd503af2a44f585149e6cc9d9aa663194ce56ae10066ea3687e3ab4d1c728c4b'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '91b4ba4135e009673e8b2e5e05e4ee973f0e851c09c46173d347608d36df0535'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end
