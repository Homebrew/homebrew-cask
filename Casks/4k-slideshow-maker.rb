cask '4k-slideshow-maker' do
  version '1.6'
  sha256 '86f893e8b2e5e120e8c01fff359c73c3d58f8cc576d3bdefb016301c0c4812ca'

  url "https://downloads.4kdownload.com/app/4kslideshowmaker_#{version}.dmg"
  name '4K Slideshow Maker'
  homepage 'https://www.4kdownload.com/products/product-slideshowmaker'

  app '4K Slideshow Maker.app'

  zap delete: [
                '~/Library/Preferences/com.4kdownload.4K Slideshow Maker.plist',
                '~/Library/Application Support/4kdownload.com',
                '~/Library/Saved Application State/com.openmedia.4kslideshowmaker.savedState',
              ]
end
