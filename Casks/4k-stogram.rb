cask '4k-stogram' do
  version '2.3.2.1276'
  sha256 'ab7937cd1c47ee966fcafa1cb8a16917482157e3deae1380dd7be516998e6619'

  url "https://downloads.4kdownload.com/app/4kstogram_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '50a40a2c1f278c002cbc84514c32402410eb7ed9e2ac528d2cf2705a50cbcbb8'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
