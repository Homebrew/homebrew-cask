cask 'metashape' do
  version '1.5.3'
  sha256 '26eb5b7ee2645aa6f2284d8cdcf4d303a5c51db906b2129b79a6da334dd0581b'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
