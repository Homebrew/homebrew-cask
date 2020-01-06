cask 'cisdem-document-reader' do
  version '5.0.0'
  sha256 'e621f103edcd8816ca72a1b73cdebaea00e0300f9cf506bcae00178d5fb5965f'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
