cask 'photoscan' do
  version '1.3.4'
  sha256 'b8d14bd07c45ae3cf6cd63a6006f12f41ec85776ffb80ca2f0a122e8af24d9e4'

  url "http://download.agisoft.com/photoscan_#{version.dots_to_underscores}.dmg"
  appcast 'http://www.agisoft.com/downloads/installer/',
          checkpoint: '3557f954f1c6bb70547457492ae8cc45993a47f64c693ed362cc0fadd63aa2c9'
  name 'Agisoft Photoscan'
  homepage 'http://www.agisoft.com/'

  app 'PhotoScan.app'
end
