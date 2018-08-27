cask '4k-slideshow-maker' do
  version '1.7.1.978'
  sha256 'e1fcf1b3ef7303c09431541d79cd52580037448e4ca22553ec33587c295d984f'

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
