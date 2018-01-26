cask '4k-stogram' do
  version '2.6.2.1467'
  sha256 '1f053da82ad48f787e84a82d48ea639ffdf2c624ff5fb88c8724361616f72654'

  url "https://dl.4kdownload.com/app/4kstogram_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: 'bcc9ec5479e3d7db1f10175083eb4c73dd6590b8bfe3cab26f6d78efbbc4c583'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'

  zap trash: '~/Pictures/4K Stogram'
end
