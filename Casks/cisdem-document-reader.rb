cask 'cisdem-document-reader' do
  version '4.4.0'
  sha256 'dc3207fe688bb3f07ba806ddf0ffe5743ac51ff135cf08cc09b50de58aaa00b1'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
