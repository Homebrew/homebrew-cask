cask 'photoscan' do
  version '1.4.4'
  sha256 '3fe1639e7d5f1a008a61780f9073b10d1df2fff30a6b7d9b010bbb31db6de530'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
