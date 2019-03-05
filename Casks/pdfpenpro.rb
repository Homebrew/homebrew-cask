cask 'pdfpenpro' do
  version '1022.6,1551314274'
  sha256 '4a1b493a68ee71d5cdc6afee75309494786d6fc0470931b5f2d9c59ed1c86429'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  depends_on macos: '>= :sierra'

  app 'PDFpenPro.app'
end
