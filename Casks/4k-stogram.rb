cask '4k-stogram' do
  version '2.8.1.1970'
  sha256 '92c3fe4b0e46f62083c4deccdbfa7b9be6305a6eada0eabdea9617c7b40d7441'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
