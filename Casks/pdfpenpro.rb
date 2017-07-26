cask 'pdfpenpro' do
  version '910.13,1501038914'
  sha256 '529ce7afcda234443f510bd046650225135ab4e3a054cd49d071d1dbe9676d99'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '6ab6e52e8c7afcb947a136f86ed6c86537335c57f46f8a380aa72448f3c63079'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
