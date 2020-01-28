cask '4k-video-downloader' do
  version '4.11.2.3400'
  sha256 'eaad0bbdcbbb7b0ed37e4380520ead1901e8f1c6388eca3941c92cd4df27a220'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
