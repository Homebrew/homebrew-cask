cask 'pdfpenpro' do
  version '922.1,1508811074'
  sha256 'b97542911f5cb30b2a4bd9bd9b11584a02ffae8d786ff1d96202cc7733e7e20d'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '298fe1b97a3f429af40730c7040842e3c82ba325bdd298772a1443ac7b97ae48'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
