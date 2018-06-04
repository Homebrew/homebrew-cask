cask '4k-stogram' do
  version '2.6.13.1580'
  sha256 'be96f15216a129a575f25254d8b46e759417a3fd8d790ee2943d9fccea661c0b'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'bc602309e88e5f0311dbad6bb4feaa37187e97aa2db120383b4e765347959bf8'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
