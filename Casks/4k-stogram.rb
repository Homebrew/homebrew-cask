cask '4k-stogram' do
  version '2.6.12.1567'
  sha256 'b20e3f476294600ce69e0dae19a2111f9e20b6ca7a58edaadee1db14eaa0c4c5'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '65c84cd2c25eea4ad18a46183c8ad14040be6766248d99f8b4e2b856a7013d59'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
