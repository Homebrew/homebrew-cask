cask 'photoscan' do
  version '1.4.3'
  sha256 '89d384c526f08da32cefc4280b5cf64c854859d1a1ad5051d41c2c92e06ef06d'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
