cask 'cisdem-document-reader' do
  version '4.1.0'
  sha256 '2a9c18b6ef337c59b938d8bbbcd88e9ddc866f05d613f5cc1039aa6abfa6ff47'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
