cask 'cisdem-document-reader' do
  version '3.1.0'
  sha256 '6ec4fc6e7eb5a5d7e2c39096bc04322e82a20eef264603bcd9730ea6a44c0cf8'

  url 'https://www.cisdem.com/download/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html',
          checkpoint: 'ddb52981eb639069fc0f8e5d548bcf5d1809edf1e6ef5e21cd98bd3da861e81b'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
