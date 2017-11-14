cask 'pdfextractor' do
  version :latest
  sha256 :no_check

  url 'http://pdfextractor-app.com/PDFExtractor.dmg'
  name 'PDFExtractor'
  homepage 'http://pdfextractor-app.com/'

  auto_updates true

  app 'PDFExtractor.app'

  zap delete: [
                '~/Library/Preferences/com.briksoftware.pdfextractor.plist',
                '~/Library/Saved Application State/com.briksoftware.pdfextractor.savedState',
              ]
end
