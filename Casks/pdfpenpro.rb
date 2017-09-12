cask 'pdfpenpro' do
  version '920.0,1504750884'
  sha256 'cc664ae529cb067a5adf7e3c8c4c284b6f7b3e7ea4df94869fa371988f737fec'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '6b76b227e4a9b779dc4e2945a602714d95b1289c8ed644e6b28f4d0e9ddfccfc'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
