cask 'mactracker' do
  version '7.5.2'
  sha256 '77b12ac7855b7330a4da008b12e12176e7ff684b75a7d782aeb540125b090ec8'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => 'a0316344b17cc633236fc6227f9843707ee3ae0b8b48794cf8b1e45cb9e5f728'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
