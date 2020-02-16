cask 'metashape' do
  version '1.6.1'
  sha256 '9c442e8afbc298510de1927a31179fb0fb3e98140f6847f9319c6df66d94c3fd'

  url "http://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.agisoft.com/downloads/installer/'
  name 'Agisoft Metashape Standard Edition'
  homepage 'https://www.agisoft.com/'

  app 'Metashape.app'
end
