cask '4k-stogram' do
  version '3.0.2.3160'
  sha256 '6f6d7381967733cf9d94ae5cbb06bea3bbf929c717e71556175f2c1e5077f31a'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
