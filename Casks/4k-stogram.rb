cask '4k-stogram' do
  version '2.0'
  sha256 'a4ff472fcf5c46c7ca82f9ad5d85d45048fe8d0553588bedf8e41c2564b968cf'

  url "https://downloads.4kdownload.com/app/4kstogram_#{version}.dmg"
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'
  license :gratis

  app '4K Stogram.app'
end
