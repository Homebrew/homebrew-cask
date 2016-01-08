cask 'mactracker' do
  version '7.5.2'
  sha256 '77b12ac7855b7330a4da008b12e12176e7ff684b75a7d782aeb540125b090ec8'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => 'f461c77f9dd1edeaee0fc3a673821a273600854e507caf5407358b88a39807df'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
