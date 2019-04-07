cask 'pdfpenpro' do
  version '1024.1,1554587687'
  sha256 '813673068eb5f3d9d8ce53c0f49d00a64f1b26f9b7f4627562b3ddea4160b38f'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
