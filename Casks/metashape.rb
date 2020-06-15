cask 'metashape' do
  version '1.6.3,10732'
  sha256 '5a5c8336805edf21ebb69f54afa1a8b4d39c0ee5bb56de1d0b8ca216d873bae2'

  url "http://download.agisoft.com/metashape_#{version.before_comma.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
