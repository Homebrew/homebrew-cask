cask '4k-stogram' do
  version '2.7.3.1805'
  sha256 '8ade355bd9697cdcb1ef8fe16a8493f1c37f28b44a3d266eac725ba0431cda48'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
