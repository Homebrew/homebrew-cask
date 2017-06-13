cask 'photoscanpro' do
  version '1.3.0'
  sha256 '1b37d63a572e9af5c4c4c5920df6e9071086b784f3281f322fdf1cac58b2b5d0'

  url "http://download.agisoft.com/photoscan-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft PhotoScan Professional'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScanPro.app'
end
