cask 'photoscan' do
  version '1.4.1'
  sha256 'ccdeb02f6c40b77d0b1bd3287bdf8fce520e251fc8cc6cdb947cff0ea9751acf'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/',
          checkpoint: '10eaa297b07f68cce32b1e6ff2344f10b004c92875a4e6bc450a1f60f532c0a6'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
