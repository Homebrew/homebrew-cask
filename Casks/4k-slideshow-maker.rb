cask '4k-slideshow-maker' do
  version '1.7.0.968'
  sha256 '00c44ea17ce8c6bf2aa59d876d605f8fa4c3f6745ba716ed741d4056fe818aa5'

  url "https://dl.4kdownload.com/app/4kslideshowmaker_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Slideshow Maker'
  homepage 'https://www.4kdownload.com/products/product-slideshowmaker'

  app '4K Slideshow Maker.app'

  zap trash: [
               '~/Library/Application Support/4kdownload.com',
               '~/Library/Preferences/com.4kdownload.4K Slideshow Maker.plist',
               '~/Library/Saved Application State/com.openmedia.4kslideshowmaker.savedState',
             ]
end
