cask '4k-slideshow-maker' do
  version '1.6.2.948'
  sha256 '46b789c27de3f65bddd475b79d59d18e2b86229d622e3b3ec446fceca5731466'

  url "https://downloads2.4kdownload.com/app/4kslideshowmaker_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '9b7b2dfa4aa59157701cff076b8e877ebb922521c4ba7adabd6bee2038e9e962'
  name '4K Slideshow Maker'
  homepage 'https://www.4kdownload.com/products/product-slideshowmaker'

  app '4K Slideshow Maker.app'

  zap delete: [
                '~/Library/Saved Application State/com.openmedia.4kslideshowmaker.savedState',
              ],
      trash:  [
                '~/Library/Preferences/com.4kdownload.4K Slideshow Maker.plist',
                '~/Library/Application Support/4kdownload.com',
              ]
end
