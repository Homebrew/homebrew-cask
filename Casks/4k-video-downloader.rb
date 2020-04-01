cask '4k-video-downloader' do
  version '4.12.0.3570'
  sha256 '056c752167d4deaa38d1f21fcb67dfdfb438e4dfc681ed16e088ab080d3feb1f'

  url "https://dl.4kdownload.com/app/4kvideodownloader_#{version.major_minor_patch}.dmg"
  appcast 'https://www.4kdownload.com/download'
  name '4K Video Downloader'
  homepage 'https://www.4kdownload.com/products/product-videodownloader'

  depends_on macos: '>= :sierra'

  app '4K Video Downloader.app'
end
