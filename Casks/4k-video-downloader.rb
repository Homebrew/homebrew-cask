cask '4k-video-downloader' do
  version '4.11.3.3420'
  sha256 'b0cb706a5b7748a0cfe7e2d38cbf51d6e999bfe3bbb355d845c2ce933c1ee1cd'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
