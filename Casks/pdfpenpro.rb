cask 'pdfpenpro' do
  version '901.0,1492146704'
  sha256 '043c812dc5dc44294e6a1bb196305133a930ac6cc26fe1b07b88917253af5606'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '3dc31609d2afa23f97982e9c9d8370dd2b4e61e95f90ffc6211e0f0eb47aaf3b'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
