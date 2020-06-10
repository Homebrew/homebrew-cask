cask '4k-stogram' do
  version '3.0.3.3190'
  sha256 '99e7fb94c330b5b92ca46c463852bbcb3fc1499caa78b628f1ac9dad9219a417'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
