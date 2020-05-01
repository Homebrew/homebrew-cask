cask '4k-stogram' do
  version '3.0.0.3140'
  sha256 'd4d69f78a8dd078259c0f60a831872eab0d52d64609c73c57b42949d5958e858'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
