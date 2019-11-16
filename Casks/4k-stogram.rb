cask '4k-stogram' do
  version '2.8.0.1950'
  sha256 'e9502ef69803533cda36c6619378b993b7321c35f2f1b2a1a2b737a3874bbaca'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
