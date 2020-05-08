cask '4k-stogram' do
  version '3.0.1.3150'
  sha256 '33582f743f6b897ef88d2e0219196b4a5131bd888e46c7ed3351f4422958bb50'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
