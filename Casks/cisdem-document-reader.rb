cask 'cisdem-document-reader' do
  version '3.1.0'
  sha256 '6ec4fc6e7eb5a5d7e2c39096bc04322e82a20eef264603bcd9730ea6a44c0cf8'

  url 'https://www.cisdem.com/download/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
