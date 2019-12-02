cask '4k-video-downloader' do
  version '4.10.0.3230'
  sha256 '502b210e92746af1a980c3380ee2e651a9d451f831b27621e0991bc2cb974eec'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
