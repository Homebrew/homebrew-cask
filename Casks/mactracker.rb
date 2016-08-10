cask 'mactracker' do
  version '7.5.6'
  sha256 '25d9d3b2e4807ab64141a4e7adcaffc79baf099f5afa92035e414cb062c6672b'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '6b79b75ef700dca673faab2ac7df022b7f170012a5c0080793049b909fa1efc0'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
