cask 'pdfextractor' do
  version '1.1.4'
  sha256 '5525e08dfca77728ae4b75eb3f5fd48d579d6f9a527eec743eeb2eaf313d0948'

  url 'http://pdfextractor-app.com/PDFExtractor.dmg'
  appcast 'http://pdfextractor-app.com/releases.php',
          checkpoint: '4a245917073751bb74c5117520a32d8cb3c4555526722c34e0317028133b7262'
  name 'PDFExtractor'
  homepage 'http://pdfextractor-app.com/'

  auto_updates true

  app 'PDFExtractor.app'

  zap delete: '~/Library/Saved Application State/com.briksoftware.pdfextractor.savedState',
      trash:  '~/Library/Preferences/com.briksoftware.pdfextractor.plist'
end
