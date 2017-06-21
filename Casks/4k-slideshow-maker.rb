cask '4k-slideshow-maker' do
  version '1.6.1.938'
  sha256 '86f893e8b2e5e120e8c01fff359c73c3d58f8cc576d3bdefb016301c0c4812ca'

  url "https://downloads2.4kdownload.com/app/4kslideshowmaker_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '9fe8dcb8ad4126c3e296b842be3e03d76a8eb9957f00881354c93d663cc4e77d'
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
