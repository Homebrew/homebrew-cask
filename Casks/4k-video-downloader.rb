cask '4k-video-downloader' do
  version '4.9.1.3052'
  sha256 '9a3e5f3ca002802576ebe381d228432905fe54501723c2bf51ece22da0f0d24b'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
