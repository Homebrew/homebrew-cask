cask 'pdfpenpro' do
  version '1212.1,1594827628'
  sha256 'fb11d656483b16d8f8e13d2c25760b4959907137ddcfda889901961ab19f9da4'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
