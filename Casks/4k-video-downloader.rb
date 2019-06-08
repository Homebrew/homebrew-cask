cask '4k-video-downloader' do
  version '4.7.3.2742'
  sha256 '210849d992e1a89fe56c6ad8fd01b2f7e3efba815f6a5792a8309cbd72aa69d8'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  app '4K Video Downloader.app'
end
