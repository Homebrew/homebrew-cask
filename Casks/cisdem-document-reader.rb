cask 'cisdem-document-reader' do
  version '4.2.1'
  sha256 'cb9e907f3afaa9d47698122545a22ee9f01b4c6d143d7fd3af0f67f0ea1a9837'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
