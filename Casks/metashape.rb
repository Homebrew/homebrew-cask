cask 'metashape' do
  version '1.5.3'
  sha256 'eb1243767701ef9ce59dae4d8ee6c0d95923ba0fee663f21982bf57d15ea8c3c'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
