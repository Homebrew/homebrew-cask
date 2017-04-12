cask 'photoscan' do
  version '1.3.1'
  sha256 '13f7cffc29c611145b3901ef3a2c2e73998bbc2dc33fa5fd09c04a952c7021c2'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/',
          checkpoint: '16e519a5ed47b4fc58e39177d41f3815f69f2b835f2ef1eafb7116bc8ebc4593'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
