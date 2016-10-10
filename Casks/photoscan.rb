cask 'photoscan' do
  version '1.1.5'
  sha256 '6afa75bb41135339b20b7196e2c7d0d65aa924598420005cc9eab341fd005304'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com'

  app 'PhotoScan.app'
end
