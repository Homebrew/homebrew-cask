cask '4k-stogram' do
  version '2.6.11.1557'
  sha256 '8035c50a7d9dfa7cb3824206d9dd7f849162ed93e3c2d89da08f4e1cd5c81d9b'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '6976352a19a6acbaf5953cb3db8d18a88d5258e9d05fd2a0d5018be457741204'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
