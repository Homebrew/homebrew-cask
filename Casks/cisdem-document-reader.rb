cask 'cisdem-document-reader' do
  version '4.5.0'
  sha256 '2f58ee62e16b402adb70a02895079b98a9cc4edbcfc874155235ab21c7993915'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
