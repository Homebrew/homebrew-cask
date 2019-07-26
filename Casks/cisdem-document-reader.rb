cask 'cisdem-document-reader' do
  version '4.3.0'
  sha256 '705b5828d38525ac41433606a8d63f67311e0c6c583ae581af401c97f8d30884'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
