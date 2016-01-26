cask 'mactracker' do
  version '7.5.2'
  sha256 '77b12ac7855b7330a4da008b12e12176e7ff684b75a7d782aeb540125b090ec8'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          checkpoint: '01cec4c169af6353cae89e0b6db56b1c582ecc64d3d53cafc6bca8327bf66051'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
