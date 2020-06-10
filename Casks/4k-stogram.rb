cask '4k-stogram' do
  version '3.0.4.3220'
  sha256 'acda8ad7a1338c2388083465f9526bfce0f803f515d1f4589c242c4485620701'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
