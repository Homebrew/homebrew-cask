cask 'photoscanpro' do
  version '1.4.5'
  sha256 '3aad88fe6325dc7e15570831f08ce0ea9de51ae7bff9cf632900d9f7c66758a9'

  url "http://download.agisoft.com/photoscan-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft PhotoScan Professional'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScanPro.app'
end
