cask 'cisdem-document-reader' do
  version '4.0.0'
  sha256 'cd709f08a4e6e0cc46cfdf047f23c9c900cc8dce24208639e54d46d624502c8b'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
