cask 'cisdem-document-reader' do
  version '5.1.0'
  sha256 '18ccddde919915d46ff60e6fcc23de880ed52d9e1036fd15def9b4148b58515c'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
