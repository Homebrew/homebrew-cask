cask '4k-stogram' do
  version '2.7.1.1695'
  sha256 '2a257712b08f20ec676f0c92bb51b9c79a677963ed2b00cf2ea4d3b545df4ac9'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
