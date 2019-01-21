cask '4k-stogram' do
  version '2.7.0.1685'
  sha256 '5d8db77a70f41ad09c770365371c13c50426d0906148ac8c00671284560f86b8'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
