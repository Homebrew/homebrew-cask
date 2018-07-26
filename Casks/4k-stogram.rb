cask '4k-stogram' do
  version '2.6.15.1600'
  sha256 '7667f0a17a556d2177b5793adf6da4b775670bbfede334fa1f1d3c11029ebdd5'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
