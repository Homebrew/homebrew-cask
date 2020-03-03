cask 'cisdem-document-reader' do
  version '5.2.0'
  sha256 'cd08ba974b7d468751268ccbc42ea00e94c0067a3f7f64d3ea73c2655f44e2de'

  url 'http://download.cisdem.com/cisdem-documentreader.dmg'
  appcast 'https://www.cisdem.com/document-reader-mac/release-notes.html'
  name 'Cisdem Document Reader'
  homepage 'https://www.cisdem.com/document-reader-mac.html'

  app 'Cisdem Document Reader.app'
end
