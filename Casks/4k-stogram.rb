cask '4k-stogram' do
  version '2.6.16.1610'
  sha256 'fee0e8c78aa2fb1fcf82dbcbd1df660ecc873014cb4100609eacb9ffd6efea3a'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
