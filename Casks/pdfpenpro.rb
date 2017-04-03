cask 'pdfpenpro' do
  version '833.3,1489545283'
  sha256 'f4f5c057bcf4098aabceddd5a1b42a90a6e5c56979cf22ea97fe3e52a6b0f05a'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: 'f09293ee15527dcb9b03dbdc0fc2edf05dce330fc191bf51196f285f6e31c232'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
