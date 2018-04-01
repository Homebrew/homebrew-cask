cask 'photoscanpro' do
  version '1.3.2'
  sha256 'eb4653dbf2fc40a2968b04f7f82d9b70cb86be95a9898b7892d4841bc0e50ead'

  url "http://download.agisoft.com/photoscan-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft PhotoScan Professional'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScanPro.app'
end
