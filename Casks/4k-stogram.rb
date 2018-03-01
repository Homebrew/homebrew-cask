cask '4k-stogram' do
  version '2.6.7.1517'
  sha256 'ffe74804e1a0cd0acd104e89e75b7bb827e6abb7ee6f56352c56723404f3d116'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '89c3a317a578aa5ef3291f295bb4ff1ffc73f87c026475924dbc3e9f50fe695b'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
