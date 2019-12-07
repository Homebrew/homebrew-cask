cask '4k-stogram' do
  version '2.8.2.2000'
  sha256 'd298cbdf03ee7c767d877cd4f70d33762c344bdf3ce36a9d8f554aeec15b0503'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
