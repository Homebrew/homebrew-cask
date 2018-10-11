cask '4k-stogram' do
  version '2.6.17.1620'
  sha256 '5bcea91e67cfb24bdfc72fc8faa7e2694ac03db6c41f80f8def8407d8a3f3441'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
