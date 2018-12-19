cask 'cisdem-document-reader' do
  version '3.2.0'
  sha256 '6342a47f8a635c8ff8e404626b0011adfe91ea2c0d839806464ab80e133f706e'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
