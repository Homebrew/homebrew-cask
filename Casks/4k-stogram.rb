cask '4k-stogram' do
  version '2.7.2.1795'
  sha256 '3e3f7cd3776948d6e5ff4367b6965e5e5244cf281a5ec572137c637fd8d0106e'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
