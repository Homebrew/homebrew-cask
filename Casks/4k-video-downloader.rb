cask '4k-video-downloader' do
  version '4.12.2.3600'
  sha256 '5905a6677129bea3ebdf22bc5b62a3dc11db06b47fb94e0184f00ed4aadf4893'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
