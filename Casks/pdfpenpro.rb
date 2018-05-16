cask 'pdfpenpro' do
  version '1010.4,1526435892'
  sha256 '3504060f91393b91ee9a2a03339bd7b222d64bce9ab6e70c1bb715c8ebfb8242'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '06b6ff91eb643bd93dc5a3c53314db7922f3a30a1b041cd4421f99747847fa62'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
