cask '4k-video-downloader' do
  version '4.9.2.3082'
  sha256 'd13bccaf6d79b39f454c86246903487723e6021861218492f1ac875d38d0536e'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
