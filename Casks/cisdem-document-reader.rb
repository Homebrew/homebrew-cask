cask 'cisdem-document-reader' do
  version '4.2.0'
  sha256 '3a52424200895d0ae292fce55243de69f82f89f108472a1e42b0e5f56fbcbd00'

  url 'https://www.cisdem.com/downloads/cisdem-documentreader-18.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
