cask 'photoscan' do
  version '1.4.2'
  sha256 '081e8b298690c44752901b7c32e98a045e3e40273dfbb195868d7a5172846053'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
