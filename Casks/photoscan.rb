cask 'photoscan' do
  version '1.3.2'
  sha256 'da70c79272aed723ee6c5b0ae49fa9c0394ad823b33827068aad300f08414cf7'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/',
          checkpoint: 'a6e525e8551969d5ddd61a36f2993d8f75f764a904bf0925b21c7f4be47b493e'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
