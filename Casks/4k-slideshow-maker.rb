cask '4k-slideshow-maker' do
  version '1.6.1.938'
  sha256 '86f893e8b2e5e120e8c01fff359c73c3d58f8cc576d3bdefb016301c0c4812ca'

  url "https://downloads.4kdownload.com/app/4kslideshowmaker_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '50a40a2c1f278c002cbc84514c32402410eb7ed9e2ac528d2cf2705a50cbcbb8'
  name '4K Slideshow Maker'
  homepage 'https://www.4kdownload.com/products/product-slideshowmaker'

  app '4K Slideshow Maker.app'

  zap delete: [
                '~/Library/Preferences/com.4kdownload.4K Slideshow Maker.plist',
                '~/Library/Application Support/4kdownload.com',
                '~/Library/Saved Application State/com.openmedia.4kslideshowmaker.savedState',
              ]
end
