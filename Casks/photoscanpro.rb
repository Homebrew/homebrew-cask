cask 'photoscanpro' do
  version '1.2.7'
  sha256 '2e8c6c58b97966774a113cd2071df9a73a51304e38180d3ad322fa35f0ea4adc'

  url "http://download.agisoft.com/photoscan-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft PhotoScan Professional'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScanPro.app'
end
