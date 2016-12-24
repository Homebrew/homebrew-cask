cask 'photoscan' do
  version '1.2.6'
  sha256 '1d518423874c75e2f1f589e454c7762d42ceaf7ab41f5b30904ad335b6ce5822'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/',
          checkpoint: 'c344bc3bbcf5e2e0f9f9890d3c58d89606d8cf1cd49e7a4dd1043f5303b53dcc'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
