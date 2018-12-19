cask 'photoscanpro' do
  version '1.4.4'
  sha256 'ac640616f9a88cd7d40b030f11524f0a05727d7c94c731ee92a2ae8e364f234a'

  url "http://download.agisoft.com/photoscan-pro_#{version.dots_to_underscores}.dmg"
  name 'Agisoft PhotoScan Professional'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScanPro.app'
end
