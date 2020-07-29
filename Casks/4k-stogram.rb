cask '4k-stogram' do
  version '3.0.5.3230'
  sha256 '2d087253145bf1b5ba3e3f98234ad8c238fbbb42fe270c630854a13092cd7038'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  depends_on macos: '>= :sierra'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
