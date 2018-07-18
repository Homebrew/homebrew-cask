cask '4k-stogram' do
  version '2.6.14.1590'
  sha256 'e19350844487d0e690647777aad22c5cf19ee3e149264275686f12fa7666bde5'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
