cask 'photoscan' do
  version '1.4.5'
  sha256 '14332f10b09dc75ff7c8076042ffa6ef298d9320539e5c7d334542d83c765a44'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
