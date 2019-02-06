cask 'cisdem-document-reader' do
  version '4.0.0'
  sha256 '94580363c2e8093097be85494b4c289e954fa1a5b3d31b83bc8e62d59ac7eaf0'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
