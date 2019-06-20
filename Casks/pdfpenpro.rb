cask 'pdfpenpro' do
  version '1103.3,1560869374'
  sha256 '3b2530928201bd2197fa884c00c0f05c4b06d62d5670ef407cc2b284c5e6e924'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
